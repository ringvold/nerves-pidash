-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.QuayAtDistance exposing (..)

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


id : SelectionSet EnturApi.ScalarCodecs.Id EnturApi.Object.QuayAtDistance
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecId |> .decoder)


quay : SelectionSet decodesTo EnturApi.Object.Quay -> SelectionSet (Maybe decodesTo) EnturApi.Object.QuayAtDistance
quay object_ =
    Object.selectionForCompositeField "quay" [] object_ (identity >> Decode.nullable)


distance : SelectionSet (Maybe Int) EnturApi.Object.QuayAtDistance
distance =
    Object.selectionForField "(Maybe Int)" "distance" [] (Decode.int |> Decode.nullable)
