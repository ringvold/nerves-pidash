-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Trip exposing (..)

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


{-| The time and date of travel
-}
dateTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.Trip
dateTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "dateTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The origin
-}
fromPlace : SelectionSet decodesTo EnturApi.Object.Place -> SelectionSet decodesTo EnturApi.Object.Trip
fromPlace object_ =
    Object.selectionForCompositeField "fromPlace" [] object_ identity


{-| The destination
-}
toPlace : SelectionSet decodesTo EnturApi.Object.Place -> SelectionSet decodesTo EnturApi.Object.Trip
toPlace object_ =
    Object.selectionForCompositeField "toPlace" [] object_ identity


{-| A list of possible trip patterns
-}
tripPatterns : SelectionSet decodesTo EnturApi.Object.TripPattern -> SelectionSet (List (Maybe decodesTo)) EnturApi.Object.Trip
tripPatterns object_ =
    Object.selectionForCompositeField "tripPatterns" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| A list of possible error messages as enum
-}
messageEnums : SelectionSet (List (Maybe String)) EnturApi.Object.Trip
messageEnums =
    Object.selectionForField "(List (Maybe String))" "messageEnums" [] (Decode.string |> Decode.nullable |> Decode.list)


{-| A list of possible error messages in cleartext
-}
messageStrings : SelectionSet (List (Maybe String)) EnturApi.Object.Trip
messageStrings =
    Object.selectionForField "(List (Maybe String))" "messageStrings" [] (Decode.string |> Decode.nullable |> Decode.list)


{-| Information about the timings for the trip generation
-}
debugOutput : SelectionSet decodesTo EnturApi.Object.DebugOutput -> SelectionSet decodesTo EnturApi.Object.Trip
debugOutput object_ =
    Object.selectionForCompositeField "debugOutput" [] object_ identity
