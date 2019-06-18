-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.StopCondition exposing (StopCondition(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - Destination - Situation applies when stop is the destination of the leg.
  - StartPoint - Situation applies when stop is the startpoint of the leg.
  - ExceptionalStop - Situation applies when transfering to another leg at the stop.
  - NotStopping - Situation applies when passing the stop, without stopping.
  - RequestStop - Situation applies when at the stop, and the stop requires a request to stop.

-}
type StopCondition
    = Destination
    | StartPoint
    | ExceptionalStop
    | NotStopping
    | RequestStop


decoder : Decoder StopCondition
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "destination" ->
                        Decode.succeed Destination

                    "startPoint" ->
                        Decode.succeed StartPoint

                    "exceptionalStop" ->
                        Decode.succeed ExceptionalStop

                    "notStopping" ->
                        Decode.succeed NotStopping

                    "requestStop" ->
                        Decode.succeed RequestStop

                    _ ->
                        Decode.fail ("Invalid StopCondition type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : StopCondition -> String
toString enum =
    case enum of
        Destination ->
            "destination"

        StartPoint ->
            "startPoint"

        ExceptionalStop ->
            "exceptionalStop"

        NotStopping ->
            "notStopping"

        RequestStop ->
            "requestStop"
