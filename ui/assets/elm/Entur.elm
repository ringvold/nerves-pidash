module Entur exposing (DestinationDisplay, EstimatedCall, Response, StopPlace, estimatedCallByQuay, query)

import EnturApi.Object as EO
import EnturApi.Object.DestinationDisplay as EOD
import EnturApi.Object.EstimatedCall as EOE
import EnturApi.Object.Quay as EOQ
import EnturApi.Object.StopPlace as EOS
import EnturApi.Query as Query
import EnturApi.Scalar exposing (DateTime(..), Id(..))
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet, with)
import Iso8601
import Time exposing (Posix)


type alias Response =
    Maybe StopPlace


type alias StopPlace =
    { id : String
    , name : String
    , estimatedCalls : List EstimatedCall
    }


type alias EstimatedCall =
    { expectedArrivalTime : Maybe Posix
    , destinationDisplay : Maybe DestinationDisplay
    , realtime : Maybe Bool
    , quay : Maybe String
    }


type alias DestinationDisplay =
    { frontText : Maybe String }


query : String -> SelectionSet Response RootQuery
query id =
    Query.stopPlace { id = id } stopPlaceSelection


stopPlaceSelection : SelectionSet StopPlace EO.StopPlace
stopPlaceSelection =
    SelectionSet.map3 StopPlace
        (SelectionSet.map scalarIdToString EOS.id)
        EOS.name
        (SelectionSet.map (List.filterMap identity) estimatedCalls )



-- EstimatedCall


estimatedCalls : SelectionSet (List (Maybe EstimatedCall)) EO.StopPlace
estimatedCalls =
    EOS.estimatedCalls
        (\optionals ->
            { optionals
                | numberOfDeparturesPerLineAndDestinationDisplay = Present 2
                , numberOfDepartures = Present 10
                , timeRange = Present 7200
            }
        )
        estimatedCallSelection


estimatedCallSelection : SelectionSet EstimatedCall EO.EstimatedCall
estimatedCallSelection =
    SelectionSet.map4 EstimatedCall
        (EOE.expectedArrivalTime |> SelectionSet.map mapDateTime)
        (EOE.destinationDisplay destinationDisplaySelection)
        EOE.realtime
        (EOE.quay quaySelection)


estimatedCallByQuay : String -> EstimatedCall -> Bool
estimatedCallByQuay quay estimatedCall =
    case estimatedCall.quay of
        Just q ->
            q == quay

        Nothing ->
            False



-- Quay


quaySelection : SelectionSet String EO.Quay
quaySelection =
    (EOQ.id |> SelectionSet.map scalarIdToString)



-- DestinationDisplay


destinationDisplaySelection =
    SelectionSet.map DestinationDisplay
        EOD.frontText



-- Helpers


scalarIdToString : EnturApi.Scalar.Id -> String
scalarIdToString scalarId =
    case scalarId of
        Id id ->
            id


mapDateTime : Maybe EnturApi.Scalar.DateTime -> Maybe Posix
mapDateTime datetime =
    datetime
        |> Maybe.map
            (\(DateTime value) ->
                Iso8601.toTime value
                    |> Result.toMaybe
            )
        |> Maybe.withDefault Nothing
