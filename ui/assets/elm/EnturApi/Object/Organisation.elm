-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.Organisation exposing (fareUrl, id, lang, lines, name, phone, selection, situations, timezone, url)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) EnturApi.Object.Organisation
selection constructor =
    Object.selection constructor


{-| Organisation id
-}
id : Field EnturApi.Scalar.Id EnturApi.Object.Organisation
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map EnturApi.Scalar.Id)


name : Field String EnturApi.Object.Organisation
name =
    Object.fieldDecoder "name" [] Decode.string


url : Field (Maybe String) EnturApi.Object.Organisation
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.nullable)


timezone : Field String EnturApi.Object.Organisation
timezone =
    Object.fieldDecoder "timezone" [] Decode.string


lang : Field (Maybe String) EnturApi.Object.Organisation
lang =
    Object.fieldDecoder "lang" [] (Decode.string |> Decode.nullable)


phone : Field (Maybe String) EnturApi.Object.Organisation
phone =
    Object.fieldDecoder "phone" [] (Decode.string |> Decode.nullable)


fareUrl : Field (Maybe String) EnturApi.Object.Organisation
fareUrl =
    Object.fieldDecoder "fareUrl" [] (Decode.string |> Decode.nullable)


lines : SelectionSet decodesTo EnturApi.Object.Line -> Field (List (Maybe decodesTo)) EnturApi.Object.Organisation
lines object_ =
    Object.selectionField "lines" [] object_ (identity >> Decode.nullable >> Decode.list)


{-| Get all situations active for the organisation
-}
situations : SelectionSet decodesTo EnturApi.Object.PtSituationElement -> Field (List (Maybe decodesTo)) EnturApi.Object.Organisation
situations object_ =
    Object.selectionField "situations" [] object_ (identity >> Decode.nullable >> Decode.list)
