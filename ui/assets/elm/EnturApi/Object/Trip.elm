-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Trip exposing (dateTime, debugOutput, fromPlace, messageEnums, messageStrings, selection, toPlace, tripPatterns)

import EnturApi.InputObject
import EnturApi.Interface
import EnturApi.Object
import EnturApi.Scalar
import EnturApi.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) EnturApi.Object.Trip
selection constructor =
    Object.selection constructor


{-| The time and date of travel
-}
dateTime : Field (Maybe EnturApi.Scalar.DateTime) EnturApi.Object.Trip
dateTime =
    Object.fieldDecoder "dateTime" [] (Object.scalarDecoder |> Decode.map EnturApi.Scalar.DateTime |> Decode.nullable)


{-| The origin
-}
fromPlace : SelectionSet decodesTo EnturApi.Object.Place -> Field decodesTo EnturApi.Object.Trip
fromPlace object_ =
    Object.selectionField "fromPlace" [] object_ identity


{-| The destination
-}
toPlace : SelectionSet decodesTo EnturApi.Object.Place -> Field decodesTo EnturApi.Object.Trip
toPlace object_ =
    Object.selectionField "toPlace" [] object_ identity


{-| A list of possible trip patterns
-}
tripPatterns : SelectionSet decodesTo EnturApi.Object.TripPattern -> Field (List (Maybe decodesTo)) EnturApi.Object.Trip
tripPatterns object_ =
    Object.selectionField "tripPatterns" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| A list of possible error messages as enum
-}
messageEnums : Field (List (Maybe String)) EnturApi.Object.Trip
messageEnums =
    Object.fieldDecoder "messageEnums" [] (Decode.string |> Decode.nullable |> Decode.list)


{-| A list of possible error messages in cleartext
-}
messageStrings : Field (List (Maybe String)) EnturApi.Object.Trip
messageStrings =
    Object.fieldDecoder "messageStrings" [] (Decode.string |> Decode.nullable |> Decode.list)


{-| Information about the timings for the trip generation
-}
debugOutput : SelectionSet decodesTo EnturApi.Object.DebugOutput -> Field decodesTo EnturApi.Object.Trip
debugOutput object_ =
    Object.selectionField "debugOutput" [] object_ identity
