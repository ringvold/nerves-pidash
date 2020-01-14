-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.ReportType exposing (ReportType(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - General - Indicates a general info-message that should not affect trip.
  - Incident - Indicates an incident that may affect trip.

-}
type ReportType
    = General
    | Incident


list : List ReportType
list =
    [ General, Incident ]


decoder : Decoder ReportType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "general" ->
                        Decode.succeed General

                    "incident" ->
                        Decode.succeed Incident

                    _ ->
                        Decode.fail ("Invalid ReportType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : ReportType -> String
toString enum =
    case enum of
        General ->
            "general"

        Incident ->
            "incident"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ReportType
fromString enumString =
    case enumString of
        "general" ->
            Just General

        "incident" ->
            Just Incident

        _ ->
            Nothing
