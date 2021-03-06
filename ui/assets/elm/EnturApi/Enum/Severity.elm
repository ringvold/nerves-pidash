-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.Severity exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-|

  - Unknown - Situation has unknown impact on trips.
  - NoImpact - Situation has no impact on trips.
  - VerySlight - Situation has a very slight impact on trips.
  - Slight - Situation has a slight impact on trips.
  - Normal - Situation has an impact on trips (default).
  - Severe - Situation has a severe impact on trips.
  - VerySevere - Situation has a very severe impact on trips.
  - Undefined - Severity is undefined.

-}
type Severity
    = Unknown
    | NoImpact
    | VerySlight
    | Slight
    | Normal
    | Severe
    | VerySevere
    | Undefined


list : List Severity
list =
    [ Unknown, NoImpact, VerySlight, Slight, Normal, Severe, VerySevere, Undefined ]


decoder : Decoder Severity
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "unknown" ->
                        Decode.succeed Unknown

                    "noImpact" ->
                        Decode.succeed NoImpact

                    "verySlight" ->
                        Decode.succeed VerySlight

                    "slight" ->
                        Decode.succeed Slight

                    "normal" ->
                        Decode.succeed Normal

                    "severe" ->
                        Decode.succeed Severe

                    "verySevere" ->
                        Decode.succeed VerySevere

                    "undefined" ->
                        Decode.succeed Undefined

                    _ ->
                        Decode.fail ("Invalid Severity type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Severity -> String
toString enum =
    case enum of
        Unknown ->
            "unknown"

        NoImpact ->
            "noImpact"

        VerySlight ->
            "verySlight"

        Slight ->
            "slight"

        Normal ->
            "normal"

        Severe ->
            "severe"

        VerySevere ->
            "verySevere"

        Undefined ->
            "undefined"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Severity
fromString enumString =
    case enumString of
        "unknown" ->
            Just Unknown

        "noImpact" ->
            Just NoImpact

        "verySlight" ->
            Just VerySlight

        "slight" ->
            Just Slight

        "normal" ->
            Just Normal

        "severe" ->
            Just Severe

        "verySevere" ->
            Just VerySevere

        "undefined" ->
            Just Undefined

        _ ->
            Nothing
