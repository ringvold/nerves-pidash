module Main exposing (main)

import Browser
import DateFormat
import DateFormat.Language
import Dict exposing (Dict)
import Entur as Entur exposing (EstimatedCall, Response, StopPlace)
import Graphql.Http
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.Lazy exposing (lazy3)
import Http
import LineStop exposing (..)
import Msg exposing (..)
import RemoteData exposing (RemoteData(..), WebData, succeed)
import Task exposing (perform)
import Time exposing (Posix, Zone)
import View.Transit as Transit
import View.Weather
import Weather exposing (Forecast, Symbol, decodeForecast)



-- MAIN


main : Program String Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



--  SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Time.every (15 * second) <| checkIfActivePeriod model
        , Time.every (30 * second) <| TimeReceived
        ]


checkIfActivePeriod : Model -> Time.Posix -> Msg
checkIfActivePeriod model time =
    case model.activePeriod of
        Inactive ->
            NoOp

        Active startTime ->
            if Time.posixToMillis startTime + (5 * minute) > Time.posixToMillis time then
                DeparturesRequested

            else
                ActivePeriodDeactivationTriggered


second =
    1000


minute =
    60 * 1000



-- MODEL


type alias GraphqlData =
    RemoteData (Graphql.Http.Error Response) Response


type ActivePeriodStatus
    = Inactive
    | Active Time.Posix


type alias Model =
    { lineStops : WebData (List LineStop)
    , currentTime : Maybe Time.Posix
    , activePeriod : ActivePeriodStatus
    , forecasts : WebData (List Forecast)
    , departures : Dict String Departures
    , zone : Zone
    }


init : flags -> ( Model, Cmd Msg )
init flags =
    let
        model =
            { lineStops = Loading
            , currentTime = Nothing
            , activePeriod = Inactive
            , forecasts = Loading
            , departures = Dict.empty
            , zone = Time.utc
            }
    in
    ( model
    , Cmd.batch
        [ getStops
        , getForecast
        , Task.perform ZoneReceived Time.here
        ]
    )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        RefreshTriggered ->
            let
                newModel =
                    setForecastLoading model
            in
            ( { newModel | departures = setLoadingDepartures model }
            , Cmd.batch [ Task.perform ActivePeriodStartReceived Time.now, fetchDepartures model, getForecast ]
            )

        ZoneReceived zone ->
            ( { model | zone = zone }, Cmd.none )

        TimeRequested ->
            ( model, Cmd.batch [ Task.perform TimeReceived Time.now ] )

        TimeReceived time ->
            ( { model | currentTime = Just time }, Cmd.none )

        DeparturesRequested ->
            ( { model | departures = setLoadingDepartures model }
            , Cmd.batch [ fetchDepartures model ]
            )

        ActivePeriodStartReceived time ->
            ( { model | activePeriod = Active time }, Cmd.none )

        ActivePeriodDeactivationTriggered ->
            ( { model | activePeriod = Inactive }, Cmd.none )

        StopsRequested ->
            ( { model | lineStops = Loading }, Cmd.none )

        StopsReceived stops ->
            ( { model | lineStops = stops }
            , Cmd.batch
                (stops
                    |> RemoteData.withDefault []
                    |> List.map getStopPlace
                    |> List.append [ Task.perform TimeReceived Time.now ]
                    |> List.append [ Task.perform ActivePeriodStartReceived Time.now ]
                )
            )

        StopPlaceReceived stopId quay response ->
            let
                departures =
                    response
                        |> RemoteData.withDefault Nothing
                        |> Maybe.map .estimatedCalls
                        |> Maybe.withDefault []
            in
            ( { model | departures = updateDepartures quay model departures }, Cmd.none )

        ForecastRequested ->
            ( setForecastLoading model, Cmd.batch [ getForecast ] )

        ForecastReceived forecasts ->
            ( { model | forecasts = forecasts }, Cmd.none )



-- Update functions


updateDepartures : String -> Model -> List EstimatedCall -> Dict String Departures
updateDepartures quay model departures =
    let
        departuresForQuay =
            departures
                |> List.filter (Entur.estimatedCallByQuay quay)
                |> Success
    in
    Dict.insert quay departuresForQuay model.departures


isJust : Maybe a -> Bool
isJust a =
    case a of
        Just _ ->
            True

        Nothing ->
            False


setForecastLoading : Model -> Model
setForecastLoading model =
    { model | forecasts = Loading }


setLoadingDepartures : Model -> Dict String Departures
setLoadingDepartures model =
    Dict.keys model.departures
        |> List.foldl (\key acc -> Dict.insert key Loading acc) model.departures


fetchDepartures : Model -> Cmd Msg
fetchDepartures model =
    model.lineStops
        |> RemoteData.withDefault []
        |> List.map getStopPlace
        |> List.append [ Task.perform TimeReceived Time.now ]
        |> Cmd.batch



-- VIEW


view : Model -> Html Msg
view model =
    let
        containerClass =
            case model.activePeriod of
                Active _ ->
                    "active"

                Inactive ->
                    "inactive"
    in
    div [ class containerClass ]
        [ div [ class "header container-fluid" ]
            [ h2 [ class "datetime" ]
                [ text <| formatDateTime model.zone model.currentTime
                ]
            , viewClosestForecast model.forecasts
            ]
        , div
            [ class "container-fluid", onClick RefreshTriggered ]
            [ viewStopPlaces model ]
        ]


formatDateTime : Zone -> Maybe Posix -> String
formatDateTime zone maybeTime =
    let
        time =
            Maybe.withDefault (Time.millisToPosix 0) maybeTime
    in
    DateFormat.format
        [ DateFormat.monthFixed
        , DateFormat.text "."
        , DateFormat.dayOfMonthFixed
        , DateFormat.text "."
        , DateFormat.yearNumber
        , DateFormat.text " "
        , DateFormat.hourMilitaryFixed
        , DateFormat.text ":"
        , DateFormat.minuteFixed
        ]
        zone
        time


viewClosestForecast : WebData (List Forecast) -> Html Msg
viewClosestForecast forecasts =
    let
        wrapper =
            div [ class "quick-forecast", onClick ForecastRequested ]
    in
    case forecasts of
        RemoteData.Success casts ->
            List.take 2 casts
                |> List.map View.Weather.viewForecast
                |> wrapper

        RemoteData.Failure err ->
            case err of
                Http.BadBody error ->
                    wrapper
                        [ text "error"
                        ]

                _ ->
                    wrapper
                        [ text "err"
                        ]

        _ ->
            wrapper
                [ text "-"
                ]


viewStopPlaces : Model -> Html Msg
viewStopPlaces model =
    case model.lineStops of
        RemoteData.Success stops ->
            lazy3 Transit.viewStopPlaces stops model.departures model.currentTime

        RemoteData.NotAsked ->
            div [] [ text "No stops available. Have you remembered to add stops to the configuration file?" ]

        RemoteData.Loading ->
            div [] [ h2 [ class "text-center" ] [ text "LOADING STOPS!1!" ] ]

        RemoteData.Failure err ->
            div [] [ text "ERROR!!!!1!!!" ]


errToString : Http.Error -> String
errToString error =
    case error of
        Http.BadUrl err ->
            "BadUrl " ++ err

        Http.Timeout ->
            "Timeout"

        Http.NetworkError ->
            "NetworkError"

        Http.BadStatus code ->
            "BadStatus " ++ String.fromInt code

        Http.BadBody string ->
            "BadBody " ++ string



-- API/HTTP


getStopPlace : LineStop -> Cmd Msg
getStopPlace lineStop =
    Entur.query lineStop.id
        |> Graphql.Http.queryRequest "https://api.entur.io/journey-planner/v2/graphql"
        |> Graphql.Http.withHeader "ET-Client-Name" "github.com/ringvold/nerves-pidash-default_client_name"
        |> Graphql.Http.send RemoteData.fromResult
        |> Cmd.map (StopPlaceReceived lineStop.id lineStop.quay)


getStopPlaces : List LineStop -> Cmd Msg
getStopPlaces stops =
    List.map getStopPlace stops
        |> Cmd.batch


getStops : Cmd Msg
getStops =
    Http.get
        { url = "/transit/stops"
        , expect = Http.expectJson RemoteData.fromResult decodeStops
        }
        |> Cmd.map StopsReceived


getForecast : Cmd Msg
getForecast =
    Http.get
        { url = "/weather/forecast"
        , expect = Http.expectJson RemoteData.fromResult decodeForecast
        }
        |> Cmd.map ForecastReceived
