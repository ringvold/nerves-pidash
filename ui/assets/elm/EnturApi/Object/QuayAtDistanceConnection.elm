-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.QuayAtDistanceConnection exposing (edges, pageInfo)

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


{-| a list of edges
-}
edges : SelectionSet decodesTo EnturApi.Object.QuayAtDistanceEdge -> SelectionSet (Maybe (List (Maybe decodesTo))) EnturApi.Object.QuayAtDistanceConnection
edges object_ =
    Object.selectionForCompositeField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| details about this specific page
-}
pageInfo : SelectionSet decodesTo EnturApi.Object.PageInfo -> SelectionSet decodesTo EnturApi.Object.QuayAtDistanceConnection
pageInfo object_ =
    Object.selectionForCompositeField "pageInfo" [] object_ identity
