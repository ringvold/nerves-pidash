-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.TripPattern exposing (..)

import EnturApi.InputObject
import EnturApi.Interface
import EnturApi.Object
import EnturApi.Scalar
import EnturApi.ScalarCodecs
import EnturApi.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Time that the trip departs.
-}
startTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.TripPattern
startTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "startTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Time that the trip arrives.
-}
endTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.TripPattern
endTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "endTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Duration of the trip, in seconds.
-}
duration : SelectionSet (Maybe EnturApi.ScalarCodecs.Long) EnturApi.Object.TripPattern
duration =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "duration" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| This sums the direct durations of each leg. Be careful about using this, as it is not equal to the duration between startTime and endTime. See the directDuration documentation on Leg.
-}
directDuration : SelectionSet (Maybe EnturApi.ScalarCodecs.Long) EnturApi.Object.TripPattern
directDuration =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "directDuration" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| How much time is spent waiting for transit to arrive, in seconds.
-}
waitingTime : SelectionSet (Maybe EnturApi.ScalarCodecs.Long) EnturApi.Object.TripPattern
waitingTime =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "waitingTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| Total distance for the trip, in meters.
-}
distance : SelectionSet (Maybe Float) EnturApi.Object.TripPattern
distance =
    Object.selectionForField "(Maybe Float)" "distance" [] (Decode.float |> Decode.nullable)


{-| How much time is spent walking, in seconds.
-}
walkTime : SelectionSet (Maybe EnturApi.ScalarCodecs.Long) EnturApi.Object.TripPattern
walkTime =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "walkTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| How far the user has to walk, in meters.
-}
walkDistance : SelectionSet (Maybe Float) EnturApi.Object.TripPattern
walkDistance =
    Object.selectionForField "(Maybe Float)" "walkDistance" [] (Decode.float |> Decode.nullable)


{-| A list of legs. Each leg is either a walking (cycling, car) portion of the trip, or a ride leg on a particular vehicle. So a trip where the use walks to the Q train, transfers to the 6, then walks to their destination, has four legs.
-}
legs : SelectionSet decodesTo EnturApi.Object.Leg -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.TripPattern
legs object_ =
    Object.selectionForCompositeField "legs" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| Weight of the itinerary. Used for debugging. The result might have been modified after (e.g. by removing short legs) and will notnecessarily exactly represent the tripPattern. It is however the weightthat was the basis for choosing the result in the first place. If the result has been heavily modified, this field will be null.
-}
weight : SelectionSet (Maybe Float) EnturApi.Object.TripPattern
weight =
    Object.selectionForField "(Maybe Float)" "weight" [] (Decode.float |> Decode.nullable)
