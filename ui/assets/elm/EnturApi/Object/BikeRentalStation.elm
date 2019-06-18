-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.BikeRentalStation exposing (allowDropoff, bikesAvailable, description, id, latitude, longitude, name, networks, realtimeOccupancyAvailable, selection, spacesAvailable)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) EnturApi.Object.BikeRentalStation
selection constructor =
    Object.selection constructor


id : Field EnturApi.Scalar.Id EnturApi.Object.BikeRentalStation
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map EnturApi.Scalar.Id)


name : Field String EnturApi.Object.BikeRentalStation
name =
    Object.fieldDecoder "name" [] Decode.string


description : Field (Maybe String) EnturApi.Object.BikeRentalStation
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


bikesAvailable : Field (Maybe Int) EnturApi.Object.BikeRentalStation
bikesAvailable =
    Object.fieldDecoder "bikesAvailable" [] (Decode.int |> Decode.nullable)


spacesAvailable : Field (Maybe Int) EnturApi.Object.BikeRentalStation
spacesAvailable =
    Object.fieldDecoder "spacesAvailable" [] (Decode.int |> Decode.nullable)


realtimeOccupancyAvailable : Field (Maybe Bool) EnturApi.Object.BikeRentalStation
realtimeOccupancyAvailable =
    Object.fieldDecoder "realtimeOccupancyAvailable" [] (Decode.bool |> Decode.nullable)


allowDropoff : Field (Maybe Bool) EnturApi.Object.BikeRentalStation
allowDropoff =
    Object.fieldDecoder "allowDropoff" [] (Decode.bool |> Decode.nullable)


networks : Field (List (Maybe String)) EnturApi.Object.BikeRentalStation
networks =
    Object.fieldDecoder "networks" [] (Decode.string |> Decode.nullable |> Decode.list)


longitude : Field (Maybe Float) EnturApi.Object.BikeRentalStation
longitude =
    Object.fieldDecoder "longitude" [] (Decode.float |> Decode.nullable)


latitude : Field (Maybe Float) EnturApi.Object.BikeRentalStation
latitude =
    Object.fieldDecoder "latitude" [] (Decode.float |> Decode.nullable)
