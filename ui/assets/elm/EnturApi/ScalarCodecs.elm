-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.ScalarCodecs exposing (Coordinates, Date, DateTime, Id, LocalTime, Long, Time, codecs)

import EnturApi.Scalar exposing (defaultCodecs)
import Json.Decode as Decode exposing (Decoder)


type alias Coordinates =
    EnturApi.Scalar.Coordinates


type alias Date =
    EnturApi.Scalar.Date


type alias DateTime =
    EnturApi.Scalar.DateTime


type alias Id =
    EnturApi.Scalar.Id


type alias LocalTime =
    EnturApi.Scalar.LocalTime


type alias Long =
    EnturApi.Scalar.Long


type alias Time =
    EnturApi.Scalar.Time


codecs : EnturApi.Scalar.Codecs Coordinates Date DateTime Id LocalTime Long Time
codecs =
    EnturApi.Scalar.defineCodecs
        { codecCoordinates = defaultCodecs.codecCoordinates
        , codecDate = defaultCodecs.codecDate
        , codecDateTime = defaultCodecs.codecDateTime
        , codecId = defaultCodecs.codecId
        , codecLocalTime = defaultCodecs.codecLocalTime
        , codecLong = defaultCodecs.codecLong
        , codecTime = defaultCodecs.codecTime
        }
