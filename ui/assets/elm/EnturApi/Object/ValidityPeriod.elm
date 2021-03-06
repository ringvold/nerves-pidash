-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.ValidityPeriod exposing (..)

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


{-| Start of validity period
-}
startTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.ValidityPeriod
startTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "startTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| End of validity period
-}
endTime : SelectionSet (Maybe EnturApi.ScalarCodecs.DateTime) EnturApi.Object.ValidityPeriod
endTime =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "endTime" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)
