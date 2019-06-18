-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.FilterPlaceType exposing (FilterPlaceType(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - Quay - Quay
  - StopPlace - StopPlace
  - Departure - Departure
  - BicycleRent - Bicycle rent stations
  - BikePark - Bike parks
  - CarPark - Car parks

-}
type FilterPlaceType
    = Quay
    | StopPlace
    | Departure
    | BicycleRent
    | BikePark
    | CarPark


decoder : Decoder FilterPlaceType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "quay" ->
                        Decode.succeed Quay

                    "stopPlace" ->
                        Decode.succeed StopPlace

                    "departure" ->
                        Decode.succeed Departure

                    "bicycleRent" ->
                        Decode.succeed BicycleRent

                    "bikePark" ->
                        Decode.succeed BikePark

                    "carPark" ->
                        Decode.succeed CarPark

                    _ ->
                        Decode.fail ("Invalid FilterPlaceType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : FilterPlaceType -> String
toString enum =
    case enum of
        Quay ->
            "quay"

        StopPlace ->
            "stopPlace"

        Departure ->
            "departure"

        BicycleRent ->
            "bicycleRent"

        BikePark ->
            "bikePark"

        CarPark ->
            "carPark"
