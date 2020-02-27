-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Branding exposing (..)

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


id : SelectionSet (Maybe String) EnturApi.Object.Branding
id =
    Object.selectionForField "(Maybe String)" "id" [] (Decode.string |> Decode.nullable)


{-| Full name to be used for branding.
-}
name : SelectionSet (Maybe String) EnturApi.Object.Branding
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| Description of branding.
-}
description : SelectionSet (Maybe String) EnturApi.Object.Branding
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| URL to be used for branding
-}
url : SelectionSet (Maybe String) EnturApi.Object.Branding
url =
    Object.selectionForField "(Maybe String)" "url" [] (Decode.string |> Decode.nullable)


{-| URL to an image be used for branding
-}
image : SelectionSet (Maybe String) EnturApi.Object.Branding
image =
    Object.selectionForField "(Maybe String)" "image" [] (Decode.string |> Decode.nullable)
