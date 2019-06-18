-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.InputObject exposing (InputBanned, InputBannedOptionalFields, InputCoordinates, InputCoordinatesRequiredFields, InputFilters, InputFiltersOptionalFields, InputPreferred, InputPreferredOptionalFields, InputUnpreferred, InputUnpreferredOptionalFields, InputWhiteListed, InputWhiteListedOptionalFields, Location, LocationOptionalFields, TransportSubmodeFilter, TransportSubmodeFilterRequiredFields, buildInputBanned, buildInputCoordinates, buildInputFilters, buildInputPreferred, buildInputUnpreferred, buildInputWhiteListed, buildLocation, buildTransportSubmodeFilter, encodeInputBanned, encodeInputCoordinates, encodeInputFilters, encodeInputPreferred, encodeInputUnpreferred, encodeInputWhiteListed, encodeLocation, encodeTransportSubmodeFilter)

import EnturApi.Enum.TransportMode
import EnturApi.Enum.TransportSubmode
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


buildInputBanned : (InputBannedOptionalFields -> InputBannedOptionalFields) -> InputBanned
buildInputBanned fillOptionals =
    let
        optionals =
            fillOptionals
                { lines = Absent, authorities = Absent, organisations = Absent, quays = Absent, quaysHard = Absent, serviceJourneys = Absent }
    in
    { lines = optionals.lines, authorities = optionals.authorities, organisations = optionals.organisations, quays = optionals.quays, quaysHard = optionals.quaysHard, serviceJourneys = optionals.serviceJourneys }


type alias InputBannedOptionalFields =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)), quays : OptionalArgument (List (Maybe String)), quaysHard : OptionalArgument (List (Maybe String)), serviceJourneys : OptionalArgument (List (Maybe String)) }


{-| Type for the InputBanned input object.
-}
type alias InputBanned =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)), quays : OptionalArgument (List (Maybe String)), quaysHard : OptionalArgument (List (Maybe String)), serviceJourneys : OptionalArgument (List (Maybe String)) }


{-| Encode a InputBanned into a value that can be used as an argument.
-}
encodeInputBanned : InputBanned -> Value
encodeInputBanned input =
    Encode.maybeObject
        [ ( "lines", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.lines ), ( "authorities", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.authorities ), ( "organisations", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.organisations ), ( "quays", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.quays ), ( "quaysHard", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.quaysHard ), ( "serviceJourneys", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.serviceJourneys ) ]


buildInputCoordinates : InputCoordinatesRequiredFields -> InputCoordinates
buildInputCoordinates required =
    { latitude = required.latitude, longitude = required.longitude }


type alias InputCoordinatesRequiredFields =
    { latitude : Float, longitude : Float }


{-| Type for the InputCoordinates input object.
-}
type alias InputCoordinates =
    { latitude : Float, longitude : Float }


{-| Encode a InputCoordinates into a value that can be used as an argument.
-}
encodeInputCoordinates : InputCoordinates -> Value
encodeInputCoordinates input =
    Encode.maybeObject
        [ ( "latitude", Encode.float input.latitude |> Just ), ( "longitude", Encode.float input.longitude |> Just ) ]


buildInputFilters : (InputFiltersOptionalFields -> InputFiltersOptionalFields) -> InputFilters
buildInputFilters fillOptionals =
    let
        optionals =
            fillOptionals
                { quays = Absent, lines = Absent, bikeRentalStations = Absent, bikeParks = Absent, carParks = Absent }
    in
    { quays = optionals.quays, lines = optionals.lines, bikeRentalStations = optionals.bikeRentalStations, bikeParks = optionals.bikeParks, carParks = optionals.carParks }


type alias InputFiltersOptionalFields =
    { quays : OptionalArgument (List (Maybe String)), lines : OptionalArgument (List (Maybe String)), bikeRentalStations : OptionalArgument (List (Maybe String)), bikeParks : OptionalArgument (List (Maybe String)), carParks : OptionalArgument (List (Maybe String)) }


{-| Type for the InputFilters input object.
-}
type alias InputFilters =
    { quays : OptionalArgument (List (Maybe String)), lines : OptionalArgument (List (Maybe String)), bikeRentalStations : OptionalArgument (List (Maybe String)), bikeParks : OptionalArgument (List (Maybe String)), carParks : OptionalArgument (List (Maybe String)) }


{-| Encode a InputFilters into a value that can be used as an argument.
-}
encodeInputFilters : InputFilters -> Value
encodeInputFilters input =
    Encode.maybeObject
        [ ( "quays", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.quays ), ( "lines", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.lines ), ( "bikeRentalStations", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.bikeRentalStations ), ( "bikeParks", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.bikeParks ), ( "carParks", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.carParks ) ]


buildInputPreferred : (InputPreferredOptionalFields -> InputPreferredOptionalFields) -> InputPreferred
buildInputPreferred fillOptionals =
    let
        optionals =
            fillOptionals
                { lines = Absent, authorities = Absent, organisations = Absent, otherThanPreferredLinesPenalty = Absent }
    in
    { lines = optionals.lines, authorities = optionals.authorities, organisations = optionals.organisations, otherThanPreferredLinesPenalty = optionals.otherThanPreferredLinesPenalty }


type alias InputPreferredOptionalFields =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)), otherThanPreferredLinesPenalty : OptionalArgument Int }


{-| Type for the InputPreferred input object.
-}
type alias InputPreferred =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)), otherThanPreferredLinesPenalty : OptionalArgument Int }


{-| Encode a InputPreferred into a value that can be used as an argument.
-}
encodeInputPreferred : InputPreferred -> Value
encodeInputPreferred input =
    Encode.maybeObject
        [ ( "lines", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.lines ), ( "authorities", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.authorities ), ( "organisations", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.organisations ), ( "otherThanPreferredLinesPenalty", Encode.int |> Encode.optional input.otherThanPreferredLinesPenalty ) ]


buildInputUnpreferred : (InputUnpreferredOptionalFields -> InputUnpreferredOptionalFields) -> InputUnpreferred
buildInputUnpreferred fillOptionals =
    let
        optionals =
            fillOptionals
                { lines = Absent, authorities = Absent, organisations = Absent }
    in
    { lines = optionals.lines, authorities = optionals.authorities, organisations = optionals.organisations }


type alias InputUnpreferredOptionalFields =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)) }


{-| Type for the InputUnpreferred input object.
-}
type alias InputUnpreferred =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)) }


{-| Encode a InputUnpreferred into a value that can be used as an argument.
-}
encodeInputUnpreferred : InputUnpreferred -> Value
encodeInputUnpreferred input =
    Encode.maybeObject
        [ ( "lines", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.lines ), ( "authorities", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.authorities ), ( "organisations", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.organisations ) ]


buildInputWhiteListed : (InputWhiteListedOptionalFields -> InputWhiteListedOptionalFields) -> InputWhiteListed
buildInputWhiteListed fillOptionals =
    let
        optionals =
            fillOptionals
                { lines = Absent, authorities = Absent, organisations = Absent }
    in
    { lines = optionals.lines, authorities = optionals.authorities, organisations = optionals.organisations }


type alias InputWhiteListedOptionalFields =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)) }


{-| Type for the InputWhiteListed input object.
-}
type alias InputWhiteListed =
    { lines : OptionalArgument (List (Maybe String)), authorities : OptionalArgument (List (Maybe String)), organisations : OptionalArgument (List (Maybe String)) }


{-| Encode a InputWhiteListed into a value that can be used as an argument.
-}
encodeInputWhiteListed : InputWhiteListed -> Value
encodeInputWhiteListed input =
    Encode.maybeObject
        [ ( "lines", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.lines ), ( "authorities", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.authorities ), ( "organisations", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.organisations ) ]


buildLocation : (LocationOptionalFields -> LocationOptionalFields) -> Location
buildLocation fillOptionals =
    let
        optionals =
            fillOptionals
                { name = Absent, place = Absent, coordinates = Absent }
    in
    { name = optionals.name, place = optionals.place, coordinates = optionals.coordinates }


type alias LocationOptionalFields =
    { name : OptionalArgument String, place : OptionalArgument String, coordinates : OptionalArgument InputCoordinates }


{-| Type for the Location input object.
-}
type alias Location =
    { name : OptionalArgument String, place : OptionalArgument String, coordinates : OptionalArgument InputCoordinates }


{-| Encode a Location into a value that can be used as an argument.
-}
encodeLocation : Location -> Value
encodeLocation input =
    Encode.maybeObject
        [ ( "name", Encode.string |> Encode.optional input.name ), ( "place", Encode.string |> Encode.optional input.place ), ( "coordinates", encodeInputCoordinates |> Encode.optional input.coordinates ) ]


buildTransportSubmodeFilter : TransportSubmodeFilterRequiredFields -> TransportSubmodeFilter
buildTransportSubmodeFilter required =
    { transportMode = required.transportMode, transportSubmodes = required.transportSubmodes }


type alias TransportSubmodeFilterRequiredFields =
    { transportMode : EnturApi.Enum.TransportMode.TransportMode, transportSubmodes : List (Maybe EnturApi.Enum.TransportSubmode.TransportSubmode) }


{-| Type for the TransportSubmodeFilter input object.
-}
type alias TransportSubmodeFilter =
    { transportMode : EnturApi.Enum.TransportMode.TransportMode, transportSubmodes : List (Maybe EnturApi.Enum.TransportSubmode.TransportSubmode) }


{-| Encode a TransportSubmodeFilter into a value that can be used as an argument.
-}
encodeTransportSubmodeFilter : TransportSubmodeFilter -> Value
encodeTransportSubmodeFilter input =
    Encode.maybeObject
        [ ( "transportMode", Encode.enum EnturApi.Enum.TransportMode.toString input.transportMode |> Just ), ( "transportSubmodes", (Encode.enum EnturApi.Enum.TransportSubmode.toString |> Encode.maybe |> Encode.list) input.transportSubmodes |> Just ) ]
