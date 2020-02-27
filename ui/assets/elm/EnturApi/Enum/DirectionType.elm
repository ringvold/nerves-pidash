-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.DirectionType exposing (..)

import Json.Decode as Decode exposing (Decoder)


type DirectionType
    = Unknown
    | Outbound
    | Inbound
    | Clockwise
    | Anticlockwise


list : List DirectionType
list =
    [ Unknown, Outbound, Inbound, Clockwise, Anticlockwise ]


decoder : Decoder DirectionType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "unknown" ->
                        Decode.succeed Unknown

                    "outbound" ->
                        Decode.succeed Outbound

                    "inbound" ->
                        Decode.succeed Inbound

                    "clockwise" ->
                        Decode.succeed Clockwise

                    "anticlockwise" ->
                        Decode.succeed Anticlockwise

                    _ ->
                        Decode.fail ("Invalid DirectionType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : DirectionType -> String
toString enum =
    case enum of
        Unknown ->
            "unknown"

        Outbound ->
            "outbound"

        Inbound ->
            "inbound"

        Clockwise ->
            "clockwise"

        Anticlockwise ->
            "anticlockwise"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe DirectionType
fromString enumString =
    case enumString of
        "unknown" ->
            Just Unknown

        "outbound" ->
            Just Outbound

        "inbound" ->
            Just Inbound

        "clockwise" ->
            Just Clockwise

        "anticlockwise" ->
            Just Anticlockwise

        _ ->
            Nothing
