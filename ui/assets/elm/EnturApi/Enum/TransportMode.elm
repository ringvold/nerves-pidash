-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.TransportMode exposing (..)

import Json.Decode as Decode exposing (Decoder)


type TransportMode
    = Air
    | Bus
    | Cableway
    | Water
    | Funicular
    | Lift
    | Rail
    | Metro
    | Tram
    | Coach
    | Unknown


list : List TransportMode
list =
    [ Air, Bus, Cableway, Water, Funicular, Lift, Rail, Metro, Tram, Coach, Unknown ]


decoder : Decoder TransportMode
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "air" ->
                        Decode.succeed Air

                    "bus" ->
                        Decode.succeed Bus

                    "cableway" ->
                        Decode.succeed Cableway

                    "water" ->
                        Decode.succeed Water

                    "funicular" ->
                        Decode.succeed Funicular

                    "lift" ->
                        Decode.succeed Lift

                    "rail" ->
                        Decode.succeed Rail

                    "metro" ->
                        Decode.succeed Metro

                    "tram" ->
                        Decode.succeed Tram

                    "coach" ->
                        Decode.succeed Coach

                    "unknown" ->
                        Decode.succeed Unknown

                    _ ->
                        Decode.fail ("Invalid TransportMode type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TransportMode -> String
toString enum =
    case enum of
        Air ->
            "air"

        Bus ->
            "bus"

        Cableway ->
            "cableway"

        Water ->
            "water"

        Funicular ->
            "funicular"

        Lift ->
            "lift"

        Rail ->
            "rail"

        Metro ->
            "metro"

        Tram ->
            "tram"

        Coach ->
            "coach"

        Unknown ->
            "unknown"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe TransportMode
fromString enumString =
    case enumString of
        "air" ->
            Just Air

        "bus" ->
            Just Bus

        "cableway" ->
            Just Cableway

        "water" ->
            Just Water

        "funicular" ->
            Just Funicular

        "lift" ->
            Just Lift

        "rail" ->
            Just Rail

        "metro" ->
            Just Metro

        "tram" ->
            Just Tram

        "coach" ->
            Just Coach

        "unknown" ->
            Just Unknown

        _ ->
            Nothing
