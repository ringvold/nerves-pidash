-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.ServiceJourney exposing (..)

import EnturApi.Enum.BikesAllowed
import EnturApi.Enum.DirectionType
import EnturApi.Enum.FlexibleServiceType
import EnturApi.Enum.ServiceAlteration
import EnturApi.Enum.TransportSubmode
import EnturApi.Enum.WheelchairBoarding
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


id : SelectionSet EnturApi.ScalarCodecs.Id EnturApi.Object.ServiceJourney
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecId |> .decoder)


line : SelectionSet decodesTo EnturApi.Object.Line -> SelectionSet decodesTo EnturApi.Object.ServiceJourney
line object_ =
    Object.selectionForCompositeField "line" [] object_ identity


activeDates : SelectionSet (List (Maybe EnturApi.ScalarCodecs.Date)) EnturApi.Object.ServiceJourney
activeDates =
    Object.selectionForField "(List (Maybe ScalarCodecs.Date))" "activeDates" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable |> Decode.list)


{-| Whether journey is as planned, a cancellation or an extra journey. Default is as planned
-}
serviceAlteration : SelectionSet (Maybe EnturApi.Enum.ServiceAlteration.ServiceAlteration) EnturApi.Object.ServiceJourney
serviceAlteration =
    Object.selectionForField "(Maybe Enum.ServiceAlteration.ServiceAlteration)" "serviceAlteration" [] (EnturApi.Enum.ServiceAlteration.decoder |> Decode.nullable)


{-| The transport submode of the journey, if different from lines transport submode.
-}
transportSubmode : SelectionSet (Maybe EnturApi.Enum.TransportSubmode.TransportSubmode) EnturApi.Object.ServiceJourney
transportSubmode =
    Object.selectionForField "(Maybe Enum.TransportSubmode.TransportSubmode)" "transportSubmode" [] (EnturApi.Enum.TransportSubmode.decoder |> Decode.nullable)


{-| Publicly announced code for service journey, differentiating it from other service journeys for the same line.
-}
publicCode : SelectionSet (Maybe String) EnturApi.Object.ServiceJourney
publicCode =
    Object.selectionForField "(Maybe String)" "publicCode" [] (Decode.string |> Decode.nullable)


{-| For internal use by operators.
-}
privateCode : SelectionSet (Maybe String) EnturApi.Object.ServiceJourney
privateCode =
    Object.selectionForField "(Maybe String)" "privateCode" [] (Decode.string |> Decode.nullable)


{-| Publicly announced code for line, differentiating it from other lines for the same operator.
-}
linePublicCode : SelectionSet (Maybe String) EnturApi.Object.ServiceJourney
linePublicCode =
    Object.selectionForField "(Maybe String)" "linePublicCode" [] (Decode.string |> Decode.nullable)


operator : SelectionSet decodesTo EnturApi.Object.Operator -> SelectionSet (Maybe decodesTo) EnturApi.Object.ServiceJourney
operator object_ =
    Object.selectionForCompositeField "operator" [] object_ (identity >> Decode.nullable)


directionType : SelectionSet (Maybe EnturApi.Enum.DirectionType.DirectionType) EnturApi.Object.ServiceJourney
directionType =
    Object.selectionForField "(Maybe Enum.DirectionType.DirectionType)" "directionType" [] (EnturApi.Enum.DirectionType.decoder |> Decode.nullable)


{-| Whether service journey is accessible with wheelchair.
-}
wheelchairAccessible : SelectionSet (Maybe EnturApi.Enum.WheelchairBoarding.WheelchairBoarding) EnturApi.Object.ServiceJourney
wheelchairAccessible =
    Object.selectionForField "(Maybe Enum.WheelchairBoarding.WheelchairBoarding)" "wheelchairAccessible" [] (EnturApi.Enum.WheelchairBoarding.decoder |> Decode.nullable)


{-| Whether bikes are allowed on service journey.
-}
bikesAllowed : SelectionSet (Maybe EnturApi.Enum.BikesAllowed.BikesAllowed) EnturApi.Object.ServiceJourney
bikesAllowed =
    Object.selectionForField "(Maybe Enum.BikesAllowed.BikesAllowed)" "bikesAllowed" [] (EnturApi.Enum.BikesAllowed.decoder |> Decode.nullable)


journeyPattern : SelectionSet decodesTo EnturApi.Object.JourneyPattern -> SelectionSet (Maybe decodesTo) EnturApi.Object.ServiceJourney
journeyPattern object_ =
    Object.selectionForCompositeField "journeyPattern" [] object_ (identity >> Decode.nullable)


{-| Quays visited by service journey
-}
quays : SelectionSet decodesTo EnturApi.Object.Quay -> SelectionSet (List decodesTo) EnturApi.Object.ServiceJourney
quays object_ =
    Object.selectionForCompositeField "quays" [] object_ (identity >> Decode.list)


{-| Returns scheduled passing times only - without realtime-updates, for realtime-data use 'estimatedCalls'
-}
passingTimes : SelectionSet decodesTo EnturApi.Object.TimetabledPassingTime -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.ServiceJourney
passingTimes object_ =
    Object.selectionForCompositeField "passingTimes" [] object_ (identity >> Decode.nullable >> Decode.list)


type alias EstimatedCallsOptionalArguments =
    { date : OptionalArgument EnturApi.ScalarCodecs.Date }


{-| Returns scheduled passingTimes for this ServiceJourney for a given date, updated with realtime-updates (if available). NB! This takes a date as argument (default=today) and returns estimatedCalls for that date and should only be used if the date is known when creating the request. For fetching estimatedCalls for a given trip.leg, use leg.serviceJourneyEstimatedCalls instead.

  - date - Date to get estimated calls for. Defaults to today.

-}
estimatedCalls : (EstimatedCallsOptionalArguments -> EstimatedCallsOptionalArguments) -> SelectionSet decodesTo EnturApi.Object.EstimatedCall -> SelectionSet (Maybe (List (Maybe decodesTo))) EnturApi.Object.ServiceJourney
estimatedCalls fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { date = Absent }

        optionalArgs =
            [ Argument.optional "date" filledInOptionals.date (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapEncoder .codecDate) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "estimatedCalls" optionalArgs object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Detailed path travelled by service journey.
-}
pointsOnLink : SelectionSet decodesTo EnturApi.Object.PointsOnLink -> SelectionSet (Maybe decodesTo) EnturApi.Object.ServiceJourney
pointsOnLink object_ =
    Object.selectionForCompositeField "pointsOnLink" [] object_ (identity >> Decode.nullable)


notices : SelectionSet decodesTo EnturApi.Object.Notice -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.ServiceJourney
notices object_ =
    Object.selectionForCompositeField "notices" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| Get all situations active for the service journey
-}
situations : SelectionSet decodesTo EnturApi.Object.PtSituationElement -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.ServiceJourney
situations object_ =
    Object.selectionForCompositeField "situations" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| List of keyValue pairs for the service journey.
-}
keyValues : SelectionSet decodesTo EnturApi.Object.KeyValue -> SelectionSet (Maybe (List (Maybe decodesTo))) EnturApi.Object.ServiceJourney
keyValues object_ =
    Object.selectionForCompositeField "keyValues" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Type of flexible service, or null if service is not flexible.
-}
flexibleServiceType : SelectionSet (Maybe EnturApi.Enum.FlexibleServiceType.FlexibleServiceType) EnturApi.Object.ServiceJourney
flexibleServiceType =
    Object.selectionForField "(Maybe Enum.FlexibleServiceType.FlexibleServiceType)" "flexibleServiceType" [] (EnturApi.Enum.FlexibleServiceType.decoder |> Decode.nullable)


{-| Booking arrangements for flexible services.
-}
bookingArrangements : SelectionSet decodesTo EnturApi.Object.BookingArrangement -> SelectionSet (Maybe decodesTo) EnturApi.Object.ServiceJourney
bookingArrangements object_ =
    Object.selectionForCompositeField "bookingArrangements" [] object_ (identity >> Decode.nullable)
