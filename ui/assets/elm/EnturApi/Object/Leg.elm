-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Leg exposing (..)

import EnturApi.Enum.Mode
import EnturApi.Enum.TransportSubmode
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


{-| The date and time this leg begins.
-}
startTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Leg
startTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "startTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The date and time this leg ends.
-}
endTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Leg
endTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "endTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The aimed date and time this leg starts.
-}
aimedStartTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Leg
aimedStartTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "aimedStartTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The expected, realtime adjusted date and time this leg starts.
-}
expectedStartTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Leg
expectedStartTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "expectedStartTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The aimed date and time this leg ends.
-}
aimedEndTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Leg
aimedEndTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "aimedEndTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The expected, realtime adjusted date and time this leg ends.
-}
expectedEndTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Leg
expectedEndTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "expectedEndTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The mode of transport or access (e.g., foot) used when traversing this leg.
-}
mode : SelectionSet (Maybe EnturApi.Enum.Mode.Mode) EnturApi.Object.Leg
mode =
    Object.selectionForField "(Maybe Enum.Mode.Mode)" "mode" [] (EnturApi.Enum.Mode.decoder |> Decode.nullable)


{-| The transport sub mode (e.g., localBus or expressBus) used when traversing this leg. Null if leg is not a ride
-}
transportSubmode : SelectionSet (Maybe EnturApi.Enum.TransportSubmode.TransportSubmode) EnturApi.Object.Leg
transportSubmode =
    Object.selectionForField "(Maybe Enum.TransportSubmode.TransportSubmode)" "transportSubmode" [] (EnturApi.Enum.TransportSubmode.decoder |> Decode.nullable)


{-| The legs's duration in seconds
-}
duration : SelectionSet (Maybe EnturApi.ScalarCodecs.Long) EnturApi.Object.Leg
duration =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "duration" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| In the case of a flexible journey, this will represent the duration of the best-case scenario, where the vehicle drives directly to the destination for the current passenger.
-}
directDuration : SelectionSet (Maybe EnturApi.ScalarCodecs.Long) EnturApi.Object.Leg
directDuration =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "directDuration" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| The legs's geometry.
-}
pointsOnLink : SelectionSet decodesTo EnturApi.Object.PointsOnLink -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
pointsOnLink object_ =
    Object.selectionForCompositeField "pointsOnLink" [] object_ (identity >> Decode.nullable)


{-| For ride legs, the service authority used for this legs. For non-ride legs, null.
-}
authority : SelectionSet decodesTo EnturApi.Object.Authority -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
authority object_ =
    Object.selectionForCompositeField "authority" [] object_ (identity >> Decode.nullable)


{-| For ride legs, the operator used for this legs. For non-ride legs, null.
-}
operator : SelectionSet decodesTo EnturApi.Object.Operator -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
operator object_ =
    Object.selectionForCompositeField "operator" [] object_ (identity >> Decode.nullable)


{-| For ride legs, the transit organisation that operates the service used for this legs. For non-ride legs, null.
-}
organisation : SelectionSet decodesTo EnturApi.Object.Organisation -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
organisation object_ =
    Object.selectionForCompositeField "organisation" [] object_ (identity >> Decode.nullable)


{-| Whether there is real-time data about this leg
-}
realTime : SelectionSet (Maybe Bool) EnturApi.Object.Leg
realTime =
    Object.selectionForField "(Maybe Bool)" "realTime" [] (Decode.bool |> Decode.nullable)


{-| Whether there is real-time data about this leg
-}
realtime : SelectionSet (Maybe Bool) EnturApi.Object.Leg
realtime =
    Object.selectionForField "(Maybe Bool)" "realtime" [] (Decode.bool |> Decode.nullable)


{-| The distance traveled while traversing the leg in meters.
-}
distance : SelectionSet (Maybe Float) EnturApi.Object.Leg
distance =
    Object.selectionForField "(Maybe Float)" "distance" [] (Decode.float |> Decode.nullable)


{-| Whether this leg is a ride leg or not.
-}
ride : SelectionSet (Maybe Bool) EnturApi.Object.Leg
ride =
    Object.selectionForField "(Maybe Bool)" "ride" [] (Decode.bool |> Decode.nullable)


{-| Whether this leg is with a rented bike.
-}
rentedBike : SelectionSet (Maybe Bool) EnturApi.Object.Leg
rentedBike =
    Object.selectionForField "(Maybe Bool)" "rentedBike" [] (Decode.bool |> Decode.nullable)


{-| The Place where the leg originates.
-}
fromPlace : SelectionSet decodesTo EnturApi.Object.Place -> SelectionSet decodesTo EnturApi.Object.Leg
fromPlace object_ =
    Object.selectionForCompositeField "fromPlace" [] object_ identity


{-| The Place where the leg ends.
-}
toPlace : SelectionSet decodesTo EnturApi.Object.Place -> SelectionSet decodesTo EnturApi.Object.Leg
toPlace object_ =
    Object.selectionForCompositeField "toPlace" [] object_ identity


{-| EstimatedCall for the quay where the leg originates.
-}
fromEstimatedCall : SelectionSet decodesTo EnturApi.Object.EstimatedCall -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
fromEstimatedCall object_ =
    Object.selectionForCompositeField "fromEstimatedCall" [] object_ (identity >> Decode.nullable)


{-| EstimatedCall for the quay where the leg ends.
-}
toEstimatedCall : SelectionSet decodesTo EnturApi.Object.EstimatedCall -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
toEstimatedCall object_ =
    Object.selectionForCompositeField "toEstimatedCall" [] object_ (identity >> Decode.nullable)


{-| For ride legs, the line. For non-ride legs, null.
-}
line : SelectionSet decodesTo EnturApi.Object.Line -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
line object_ =
    Object.selectionForCompositeField "line" [] object_ (identity >> Decode.nullable)


{-| For ride legs, the service journey. For non-ride legs, null.
-}
serviceJourney : SelectionSet decodesTo EnturApi.Object.ServiceJourney -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
serviceJourney object_ =
    Object.selectionForCompositeField "serviceJourney" [] object_ (identity >> Decode.nullable)


{-| For ride legs, intermediate quays between the Place where the leg originates and the Place where the leg ends. For non-ride legs, empty list.
-}
intermediateQuays : SelectionSet decodesTo EnturApi.Object.Quay -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Leg
intermediateQuays object_ =
    Object.selectionForCompositeField "intermediateQuays" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| For ride legs, estimated calls for quays between the Place where the leg originates and the Place where the leg ends. For non-ride legs, empty list.
-}
intermediateEstimatedCalls : SelectionSet decodesTo EnturApi.Object.EstimatedCall -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Leg
intermediateEstimatedCalls object_ =
    Object.selectionForCompositeField "intermediateEstimatedCalls" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| For ride legs, all estimated calls for the service journey. For non-ride legs, empty list.
-}
serviceJourneyEstimatedCalls : SelectionSet decodesTo EnturApi.Object.EstimatedCall -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Leg
serviceJourneyEstimatedCalls object_ =
    Object.selectionForCompositeField "serviceJourneyEstimatedCalls" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| Do we continue from a specified via place
-}
via : SelectionSet (Maybe Bool) EnturApi.Object.Leg
via =
    Object.selectionForField "(Maybe Bool)" "via" [] (Decode.bool |> Decode.nullable)


{-| All relevant situations for this leg
-}
situations : SelectionSet decodesTo EnturApi.Object.PtSituationElement -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Leg
situations object_ =
    Object.selectionForCompositeField "situations" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| Do we continue from a specified via place
-}
steps : SelectionSet decodesTo EnturApi.Object.PathGuidance -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Leg
steps object_ =
    Object.selectionForCompositeField "steps" [] object_ (identity >> Decode.nullable >> Decode.list)


interchangeFrom : SelectionSet decodesTo EnturApi.Object.Interchange -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
interchangeFrom object_ =
    Object.selectionForCompositeField "interchangeFrom" [] object_ (identity >> Decode.nullable)


interchangeTo : SelectionSet decodesTo EnturApi.Object.Interchange -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
interchangeTo object_ =
    Object.selectionForCompositeField "interchangeTo" [] object_ (identity >> Decode.nullable)


bookingArrangements : SelectionSet decodesTo EnturApi.Object.BookingArrangement -> SelectionSet (Maybe decodesTo) EnturApi.Object.Leg
bookingArrangements object_ =
    Object.selectionForCompositeField "bookingArrangements" [] object_ (identity >> Decode.nullable)
