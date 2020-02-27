-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.RelativeDirection exposing (..)

import Json.Decode as Decode exposing (Decoder)


type RelativeDirection
    = Depart
    | HardLeft
    | Left
    | SlightlyLeft
    | Continue
    | SlightlyRight
    | Right
    | HardRight
    | CircleClockwise
    | CircleCounterclockwise
    | Elevator
    | UturnLeft
    | UturnRight


list : List RelativeDirection
list =
    [ Depart, HardLeft, Left, SlightlyLeft, Continue, SlightlyRight, Right, HardRight, CircleClockwise, CircleCounterclockwise, Elevator, UturnLeft, UturnRight ]


decoder : Decoder RelativeDirection
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "depart" ->
                        Decode.succeed Depart

                    "hardLeft" ->
                        Decode.succeed HardLeft

                    "left" ->
                        Decode.succeed Left

                    "slightlyLeft" ->
                        Decode.succeed SlightlyLeft

                    "continue" ->
                        Decode.succeed Continue

                    "slightlyRight" ->
                        Decode.succeed SlightlyRight

                    "right" ->
                        Decode.succeed Right

                    "hardRight" ->
                        Decode.succeed HardRight

                    "circleClockwise" ->
                        Decode.succeed CircleClockwise

                    "circleCounterclockwise" ->
                        Decode.succeed CircleCounterclockwise

                    "elevator" ->
                        Decode.succeed Elevator

                    "uturnLeft" ->
                        Decode.succeed UturnLeft

                    "uturnRight" ->
                        Decode.succeed UturnRight

                    _ ->
                        Decode.fail ("Invalid RelativeDirection type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RelativeDirection -> String
toString enum =
    case enum of
        Depart ->
            "depart"

        HardLeft ->
            "hardLeft"

        Left ->
            "left"

        SlightlyLeft ->
            "slightlyLeft"

        Continue ->
            "continue"

        SlightlyRight ->
            "slightlyRight"

        Right ->
            "right"

        HardRight ->
            "hardRight"

        CircleClockwise ->
            "circleClockwise"

        CircleCounterclockwise ->
            "circleCounterclockwise"

        Elevator ->
            "elevator"

        UturnLeft ->
            "uturnLeft"

        UturnRight ->
            "uturnRight"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RelativeDirection
fromString enumString =
    case enumString of
        "depart" ->
            Just Depart

        "hardLeft" ->
            Just HardLeft

        "left" ->
            Just Left

        "slightlyLeft" ->
            Just SlightlyLeft

        "continue" ->
            Just Continue

        "slightlyRight" ->
            Just SlightlyRight

        "right" ->
            Just Right

        "hardRight" ->
            Just HardRight

        "circleClockwise" ->
            Just CircleClockwise

        "circleCounterclockwise" ->
            Just CircleCounterclockwise

        "elevator" ->
            Just Elevator

        "uturnLeft" ->
            Just UturnLeft

        "uturnRight" ->
            Just UturnRight

        _ ->
            Nothing
