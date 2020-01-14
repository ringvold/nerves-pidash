-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.WheelchairBoarding exposing (WheelchairBoarding(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - NoInformation - There is no accessibility information for the stopPlace/quay.
  - Possible - Boarding wheelchair-accessible serviceJourneys is possible at this stopPlace/quay.
  - NotPossible - Wheelchair boarding/alighting is not possible at this stop.

-}
type WheelchairBoarding
    = NoInformation
    | Possible
    | NotPossible


list : List WheelchairBoarding
list =
    [ NoInformation, Possible, NotPossible ]


decoder : Decoder WheelchairBoarding
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "noInformation" ->
                        Decode.succeed NoInformation

                    "possible" ->
                        Decode.succeed Possible

                    "notPossible" ->
                        Decode.succeed NotPossible

                    _ ->
                        Decode.fail ("Invalid WheelchairBoarding type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : WheelchairBoarding -> String
toString enum =
    case enum of
        NoInformation ->
            "noInformation"

        Possible ->
            "possible"

        NotPossible ->
            "notPossible"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe WheelchairBoarding
fromString enumString =
    case enumString of
        "noInformation" ->
            Just NoInformation

        "possible" ->
            Just Possible

        "notPossible" ->
            Just NotPossible

        _ ->
            Nothing
