-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Object.BikeRentalStation exposing (..)

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


id : SelectionSet EnturApi.ScalarCodecs.Id EnturApi.Object.BikeRentalStation
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (EnturApi.ScalarCodecs.codecs |> EnturApi.Scalar.unwrapCodecs |> .codecId |> .decoder)


name : SelectionSet String EnturApi.Object.BikeRentalStation
name =
    Object.selectionForField "String" "name" [] Decode.string


description : SelectionSet (Maybe String) EnturApi.Object.BikeRentalStation
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


bikesAvailable : SelectionSet (Maybe Int) EnturApi.Object.BikeRentalStation
bikesAvailable =
    Object.selectionForField "(Maybe Int)" "bikesAvailable" [] (Decode.int |> Decode.nullable)


spacesAvailable : SelectionSet (Maybe Int) EnturApi.Object.BikeRentalStation
spacesAvailable =
    Object.selectionForField "(Maybe Int)" "spacesAvailable" [] (Decode.int |> Decode.nullable)


realtimeOccupancyAvailable : SelectionSet (Maybe Bool) EnturApi.Object.BikeRentalStation
realtimeOccupancyAvailable =
    Object.selectionForField "(Maybe Bool)" "realtimeOccupancyAvailable" [] (Decode.bool |> Decode.nullable)


allowDropoff : SelectionSet (Maybe Bool) EnturApi.Object.BikeRentalStation
allowDropoff =
    Object.selectionForField "(Maybe Bool)" "allowDropoff" [] (Decode.bool |> Decode.nullable)


networks : SelectionSet (List (Maybe String)) EnturApi.Object.BikeRentalStation
networks =
    Object.selectionForField "(List (Maybe String))" "networks" [] (Decode.string |> Decode.nullable |> Decode.list)


longitude : SelectionSet (Maybe Float) EnturApi.Object.BikeRentalStation
longitude =
    Object.selectionForField "(Maybe Float)" "longitude" [] (Decode.float |> Decode.nullable)


latitude : SelectionSet (Maybe Float) EnturApi.Object.BikeRentalStation
latitude =
    Object.selectionForField "(Maybe Float)" "latitude" [] (Decode.float |> Decode.nullable)
