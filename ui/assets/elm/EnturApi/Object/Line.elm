-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Line exposing (..)

import EnturApi.Enum.BikesAllowed
import EnturApi.Enum.FlexibleLineType
import EnturApi.Enum.TransportMode
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


id : SelectionSet EnturApi.ScalarCodecs.Id EnturApi.Object.Line
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecId |> .decoder)


authority : SelectionSet decodesTo EnturApi.Object.Authority -> SelectionSet (Maybe decodesTo) EnturApi.Object.Line
authority object_ =
    Object.selectionForCompositeField "authority" [] object_ (identity >> Decode.nullable)


operator : SelectionSet decodesTo EnturApi.Object.Operator -> SelectionSet (Maybe decodesTo) EnturApi.Object.Line
operator object_ =
    Object.selectionForCompositeField "operator" [] object_ (identity >> Decode.nullable)


organisation : SelectionSet decodesTo EnturApi.Object.Organisation -> SelectionSet (Maybe decodesTo) EnturApi.Object.Line
organisation object_ =
    Object.selectionForCompositeField "organisation" [] object_ (identity >> Decode.nullable)


{-| Publicly announced code for line, differentiating it from other lines for the same operator.
-}
publicCode : SelectionSet (Maybe String) EnturApi.Object.Line
publicCode =
    Object.selectionForField "(Maybe String)" "publicCode" [] (Decode.string |> Decode.nullable)


name : SelectionSet (Maybe String) EnturApi.Object.Line
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


transportMode : SelectionSet (Maybe EnturApi.Enum.TransportMode.TransportMode) EnturApi.Object.Line
transportMode =
    Object.selectionForField "(Maybe Enum.TransportMode.TransportMode)" "transportMode" [] (EnturApi.Enum.TransportMode.decoder |> Decode.nullable)


transportSubmode : SelectionSet (Maybe EnturApi.Enum.TransportSubmode.TransportSubmode) EnturApi.Object.Line
transportSubmode =
    Object.selectionForField "(Maybe Enum.TransportSubmode.TransportSubmode)" "transportSubmode" [] (EnturApi.Enum.TransportSubmode.decoder |> Decode.nullable)


description : SelectionSet (Maybe String) EnturApi.Object.Line
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


url : SelectionSet (Maybe String) EnturApi.Object.Line
url =
    Object.selectionForField "(Maybe String)" "url" [] (Decode.string |> Decode.nullable)


presentation : SelectionSet decodesTo EnturApi.Object.Presentation -> SelectionSet (Maybe decodesTo) EnturApi.Object.Line
presentation object_ =
    Object.selectionForCompositeField "presentation" [] object_ (identity >> Decode.nullable)


bikesAllowed : SelectionSet (Maybe EnturApi.Enum.BikesAllowed.BikesAllowed) EnturApi.Object.Line
bikesAllowed =
    Object.selectionForField "(Maybe Enum.BikesAllowed.BikesAllowed)" "bikesAllowed" [] (EnturApi.Enum.BikesAllowed.decoder |> Decode.nullable)


journeyPatterns : SelectionSet decodesTo EnturApi.Object.JourneyPattern -> SelectionSet (Maybe (List (Maybe decodesTo))) EnturApi.Object.Line
journeyPatterns object_ =
    Object.selectionForCompositeField "journeyPatterns" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


quays : SelectionSet decodesTo EnturApi.Object.Quay -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Line
quays object_ =
    Object.selectionForCompositeField "quays" [] object_ (identity >> Decode.nullable >> Decode.list)


serviceJourneys : SelectionSet decodesTo EnturApi.Object.ServiceJourney -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Line
serviceJourneys object_ =
    Object.selectionForCompositeField "serviceJourneys" [] object_ (identity >> Decode.nullable >> Decode.list)


notices : SelectionSet decodesTo EnturApi.Object.Notice -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Line
notices object_ =
    Object.selectionForCompositeField "notices" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| Get all situations active for the line
-}
situations : SelectionSet decodesTo EnturApi.Object.PtSituationElement -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Line
situations object_ =
    Object.selectionForCompositeField "situations" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| List of keyValue pairs for the line.
-}
keyValues : SelectionSet decodesTo EnturApi.Object.KeyValue -> SelectionSet (Maybe (List (Maybe decodesTo))) EnturApi.Object.Line
keyValues object_ =
    Object.selectionForCompositeField "keyValues" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Type of flexible line, or null if line is not flexible.
-}
flexibleLineType : SelectionSet (Maybe EnturApi.Enum.FlexibleLineType.FlexibleLineType) EnturApi.Object.Line
flexibleLineType =
    Object.selectionForField "(Maybe Enum.FlexibleLineType.FlexibleLineType)" "flexibleLineType" [] (EnturApi.Enum.FlexibleLineType.decoder |> Decode.nullable)


{-| Booking arrangements for flexible line.
-}
bookingArrangements : SelectionSet decodesTo EnturApi.Object.BookingArrangement -> SelectionSet (Maybe decodesTo) EnturApi.Object.Line
bookingArrangements object_ =
    Object.selectionForCompositeField "bookingArrangements" [] object_ (identity >> Decode.nullable)
