-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Quay exposing (..)

import EnturApi.Enum.Mode
import EnturApi.Enum.StopType
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


id : SelectionSet EnturApi.ScalarCodecs.Id EnturApi.Object.Quay
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecId |> .decoder)


name : SelectionSet String EnturApi.Object.Quay
name =
    Object.selectionForField "String" "name" [] Decode.string


latitude : SelectionSet (Maybe Float) EnturApi.Object.Quay
latitude =
    Object.selectionForField "(Maybe Float)" "latitude" [] (Decode.float |> Decode.nullable)


longitude : SelectionSet (Maybe Float) EnturApi.Object.Quay
longitude =
    Object.selectionForField "(Maybe Float)" "longitude" [] (Decode.float |> Decode.nullable)


description : SelectionSet (Maybe String) EnturApi.Object.Quay
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The stop place to which this quay belongs to.
-}
stopPlace : SelectionSet decodesTo EnturApi.Object.StopPlace -> SelectionSet (Maybe decodesTo) EnturApi.Object.Quay
stopPlace object_ =
    Object.selectionForCompositeField "stopPlace" [] object_ (identity >> Decode.nullable)


{-| Whether this quay is suitable for wheelchair boarding.
-}
wheelchairAccessible : SelectionSet (Maybe EnturApi.Enum.WheelchairBoarding.WheelchairBoarding) EnturApi.Object.Quay
wheelchairAccessible =
    Object.selectionForField "(Maybe Enum.WheelchairBoarding.WheelchairBoarding)" "wheelchairAccessible" [] (EnturApi.Enum.WheelchairBoarding.decoder |> Decode.nullable)


timezone : SelectionSet String EnturApi.Object.Quay
timezone =
    Object.selectionForField "String" "timezone" [] Decode.string


{-| Public code used to identify this quay within the stop place. For instance a platform code.
-}
publicCode : SelectionSet (Maybe String) EnturApi.Object.Quay
publicCode =
    Object.selectionForField "(Maybe String)" "publicCode" [] (Decode.string |> Decode.nullable)


{-| List of lines servicing this quay
-}
lines : SelectionSet decodesTo EnturApi.Object.Line -> SelectionSet (List decodesTo) EnturApi.Object.Quay
lines object_ =
    Object.selectionForCompositeField "lines" [] object_ (identity >> Decode.list)


{-| List of journey patterns servicing this quay
-}
journeyPatterns : SelectionSet decodesTo EnturApi.Object.JourneyPattern -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Quay
journeyPatterns object_ =
    Object.selectionForCompositeField "journeyPatterns" [] object_ (identity >> Decode.nullable >> Decode.list)


type alias EstimatedCallsOptionalArguments =
    { startTime : OptionalArgument EnturApi.ScalarCodecs.DateTime
    , timeRange : OptionalArgument Int
    , numberOfDepartures : OptionalArgument Int
    , numberOfDeparturesPerLineAndDestinationDisplay : OptionalArgument Int
    , omitNonBoarding : OptionalArgument Bool
    , includeCancelledTrips : OptionalArgument Bool
    , whiteListed : OptionalArgument EnturApi.InputObject.InputWhiteListed
    , whiteListedModes : OptionalArgument (List (Maybe EnturApi.Enum.Mode.Mode))
    }


{-| List of visits to this quay as part of vehicle journeys.

  - startTime - DateTime for when to fetch estimated calls from. Default value is current time
  - numberOfDepartures - Limit the total number of departures returned.
  - numberOfDeparturesPerLineAndDestinationDisplay - Limit the number of departures per line and destination display returned. The parameter is only applied when the value is between 1 and 'numberOfDepartures'.
  - includeCancelledTrips - Indicates that realtime-cancelled trips should also be included.
  - whiteListed - Parameters for indicating the only authorities and/or lines or quays to list estimatedCalls for
  - whiteListedModes - Only show estimated calls for selected modes.

-}
estimatedCalls : (EstimatedCallsOptionalArguments -> EstimatedCallsOptionalArguments) -> SelectionSet decodesTo EnturApi.Object.EstimatedCall -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Quay
estimatedCalls fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { startTime = Absent, timeRange = Absent, numberOfDepartures = Absent, numberOfDeparturesPerLineAndDestinationDisplay = Absent, omitNonBoarding = Absent, includeCancelledTrips = Absent, whiteListed = Absent, whiteListedModes = Absent }

        optionalArgs =
            [ Argument.optional "startTime" filledInOptionals.startTime (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapEncoder .codecDateTime), Argument.optional "timeRange" filledInOptionals.timeRange Encode.int, Argument.optional "numberOfDepartures" filledInOptionals.numberOfDepartures Encode.int, Argument.optional "numberOfDeparturesPerLineAndDestinationDisplay" filledInOptionals.numberOfDeparturesPerLineAndDestinationDisplay Encode.int, Argument.optional "omitNonBoarding" filledInOptionals.omitNonBoarding Encode.bool, Argument.optional "includeCancelledTrips" filledInOptionals.includeCancelledTrips Encode.bool, Argument.optional "whiteListed" filledInOptionals.whiteListed EnturApi.InputObject.encodeInputWhiteListed, Argument.optional "whiteListedModes" filledInOptionals.whiteListedModes (Encode.enum EnturApi.Enum.Mode.toString |> Encode.maybe |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "estimatedCalls" optionalArgs object_ (identity >> Decode.nullable >> Decode.list)


{-| Get all situations active for the quay
-}
situations : SelectionSet decodesTo EnturApi.Object.PtSituationElement -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Quay
situations object_ =
    Object.selectionForCompositeField "situations" [] object_ (identity >> Decode.nullable >> Decode.list)


stopType : SelectionSet (Maybe EnturApi.Enum.StopType.StopType) EnturApi.Object.Quay
stopType =
    Object.selectionForField "(Maybe Enum.StopType.StopType)" "stopType" [] (EnturApi.Enum.StopType.decoder |> Decode.nullable)


{-| Geometry for flexible area.
-}
flexibleArea : SelectionSet (Maybe EnturApi.ScalarCodecs.Coordinates) EnturApi.Object.Quay
flexibleArea =
    Object.selectionForField "(Maybe ScalarCodecs.Coordinates)" "flexibleArea" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecCoordinates |> .decoder |> Decode.nullable)
