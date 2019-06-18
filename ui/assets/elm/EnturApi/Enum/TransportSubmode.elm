-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module EnturApi.Enum.TransportSubmode exposing (TransportSubmode(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


type TransportSubmode
    = Unknown
    | Undefined
    | InternationalFlight
    | DomesticFlight
    | IntercontinentalFlight
    | DomesticScheduledFlight
    | ShuttleFlight
    | IntercontinentalCharterFlight
    | InternationalCharterFlight
    | RoundTripCharterFlight
    | SightseeingFlight
    | HelicopterService
    | DomesticCharterFlight
    | SchengenAreaFlight
    | AirshipService
    | ShortHaulInternationalFlight
    | CanalBarge
    | LocalBus
    | RegionalBus
    | ExpressBus
    | NightBus
    | PostBus
    | SpecialNeedsBus
    | MobilityBus
    | MobilityBusForRegisteredDisabled
    | SightseeingBus
    | ShuttleBus
    | HighFrequencyBus
    | DedicatedLaneBus
    | SchoolBus
    | SchoolAndPublicServiceBus
    | RailReplacementBus
    | DemandAndResponseBus
    | AirportLinkBus
    | InternationalCoach
    | NationalCoach
    | ShuttleCoach
    | RegionalCoach
    | SpecialCoach
    | SchoolCoach
    | SightseeingCoach
    | TouristCoach
    | CommuterCoach
    | Funicular
    | StreetCableCar
    | AllFunicularServices
    | UndefinedFunicular
    | Metro
    | Tube
    | UrbanRailway
    | CityTram
    | LocalTram
    | RegionalTram
    | SightseeingTram
    | ShuttleTram
    | TrainTram
    | Telecabin
    | CableCar
    | Lift
    | ChairLift
    | DragLift
    | TelecabinLink
    | Local
    | HighSpeedRail
    | SuburbanRailway
    | RegionalRail
    | InterregionalRail
    | LongDistance
    | International
    | SleeperRailService
    | NightRail
    | CarTransportRailService
    | TouristRailway
    | AirportLinkRail
    | RailShuttle
    | ReplacementRailService
    | SpecialTrain
    | CrossCountryRail
    | RackAndPinionRailway
    | InternationalCarFerry
    | NationalCarFerry
    | RegionalCarFerry
    | LocalCarFerry
    | InternationalPassengerFerry
    | NationalPassengerFerry
    | RegionalPassengerFerry
    | LocalPassengerFerry
    | PostBoat
    | TrainFerry
    | RoadFerryLink
    | AirportBoatLink
    | HighSpeedVehicleService
    | HighSpeedPassengerService
    | SightseeingService
    | SchoolBoat
    | CableFerry
    | RiverBus
    | ScheduledFerry
    | ShuttleFerryService
    | CommunalTaxi
    | CharterTaxi
    | WaterTaxi
    | RailTaxi
    | BikeTaxi
    | BlackCab
    | MiniCab
    | AllTaxiServices
    | HireCar
    | HireVan
    | HireMotorbike
    | HireCycle
    | AllHireVehicles


decoder : Decoder TransportSubmode
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "unknown" ->
                        Decode.succeed Unknown

                    "undefined" ->
                        Decode.succeed Undefined

                    "internationalFlight" ->
                        Decode.succeed InternationalFlight

                    "domesticFlight" ->
                        Decode.succeed DomesticFlight

                    "intercontinentalFlight" ->
                        Decode.succeed IntercontinentalFlight

                    "domesticScheduledFlight" ->
                        Decode.succeed DomesticScheduledFlight

                    "shuttleFlight" ->
                        Decode.succeed ShuttleFlight

                    "intercontinentalCharterFlight" ->
                        Decode.succeed IntercontinentalCharterFlight

                    "internationalCharterFlight" ->
                        Decode.succeed InternationalCharterFlight

                    "roundTripCharterFlight" ->
                        Decode.succeed RoundTripCharterFlight

                    "sightseeingFlight" ->
                        Decode.succeed SightseeingFlight

                    "helicopterService" ->
                        Decode.succeed HelicopterService

                    "domesticCharterFlight" ->
                        Decode.succeed DomesticCharterFlight

                    "SchengenAreaFlight" ->
                        Decode.succeed SchengenAreaFlight

                    "airshipService" ->
                        Decode.succeed AirshipService

                    "shortHaulInternationalFlight" ->
                        Decode.succeed ShortHaulInternationalFlight

                    "canalBarge" ->
                        Decode.succeed CanalBarge

                    "localBus" ->
                        Decode.succeed LocalBus

                    "regionalBus" ->
                        Decode.succeed RegionalBus

                    "expressBus" ->
                        Decode.succeed ExpressBus

                    "nightBus" ->
                        Decode.succeed NightBus

                    "postBus" ->
                        Decode.succeed PostBus

                    "specialNeedsBus" ->
                        Decode.succeed SpecialNeedsBus

                    "mobilityBus" ->
                        Decode.succeed MobilityBus

                    "mobilityBusForRegisteredDisabled" ->
                        Decode.succeed MobilityBusForRegisteredDisabled

                    "sightseeingBus" ->
                        Decode.succeed SightseeingBus

                    "shuttleBus" ->
                        Decode.succeed ShuttleBus

                    "highFrequencyBus" ->
                        Decode.succeed HighFrequencyBus

                    "dedicatedLaneBus" ->
                        Decode.succeed DedicatedLaneBus

                    "schoolBus" ->
                        Decode.succeed SchoolBus

                    "schoolAndPublicServiceBus" ->
                        Decode.succeed SchoolAndPublicServiceBus

                    "railReplacementBus" ->
                        Decode.succeed RailReplacementBus

                    "demandAndResponseBus" ->
                        Decode.succeed DemandAndResponseBus

                    "airportLinkBus" ->
                        Decode.succeed AirportLinkBus

                    "internationalCoach" ->
                        Decode.succeed InternationalCoach

                    "nationalCoach" ->
                        Decode.succeed NationalCoach

                    "shuttleCoach" ->
                        Decode.succeed ShuttleCoach

                    "regionalCoach" ->
                        Decode.succeed RegionalCoach

                    "specialCoach" ->
                        Decode.succeed SpecialCoach

                    "schoolCoach" ->
                        Decode.succeed SchoolCoach

                    "sightseeingCoach" ->
                        Decode.succeed SightseeingCoach

                    "touristCoach" ->
                        Decode.succeed TouristCoach

                    "commuterCoach" ->
                        Decode.succeed CommuterCoach

                    "funicular" ->
                        Decode.succeed Funicular

                    "streetCableCar" ->
                        Decode.succeed StreetCableCar

                    "allFunicularServices" ->
                        Decode.succeed AllFunicularServices

                    "undefinedFunicular" ->
                        Decode.succeed UndefinedFunicular

                    "metro" ->
                        Decode.succeed Metro

                    "tube" ->
                        Decode.succeed Tube

                    "urbanRailway" ->
                        Decode.succeed UrbanRailway

                    "cityTram" ->
                        Decode.succeed CityTram

                    "localTram" ->
                        Decode.succeed LocalTram

                    "regionalTram" ->
                        Decode.succeed RegionalTram

                    "sightseeingTram" ->
                        Decode.succeed SightseeingTram

                    "shuttleTram" ->
                        Decode.succeed ShuttleTram

                    "trainTram" ->
                        Decode.succeed TrainTram

                    "telecabin" ->
                        Decode.succeed Telecabin

                    "cableCar" ->
                        Decode.succeed CableCar

                    "lift" ->
                        Decode.succeed Lift

                    "chairLift" ->
                        Decode.succeed ChairLift

                    "dragLift" ->
                        Decode.succeed DragLift

                    "telecabinLink" ->
                        Decode.succeed TelecabinLink

                    "local" ->
                        Decode.succeed Local

                    "highSpeedRail" ->
                        Decode.succeed HighSpeedRail

                    "suburbanRailway" ->
                        Decode.succeed SuburbanRailway

                    "regionalRail" ->
                        Decode.succeed RegionalRail

                    "interregionalRail" ->
                        Decode.succeed InterregionalRail

                    "longDistance" ->
                        Decode.succeed LongDistance

                    "international" ->
                        Decode.succeed International

                    "sleeperRailService" ->
                        Decode.succeed SleeperRailService

                    "nightRail" ->
                        Decode.succeed NightRail

                    "carTransportRailService" ->
                        Decode.succeed CarTransportRailService

                    "touristRailway" ->
                        Decode.succeed TouristRailway

                    "airportLinkRail" ->
                        Decode.succeed AirportLinkRail

                    "railShuttle" ->
                        Decode.succeed RailShuttle

                    "replacementRailService" ->
                        Decode.succeed ReplacementRailService

                    "specialTrain" ->
                        Decode.succeed SpecialTrain

                    "crossCountryRail" ->
                        Decode.succeed CrossCountryRail

                    "rackAndPinionRailway" ->
                        Decode.succeed RackAndPinionRailway

                    "internationalCarFerry" ->
                        Decode.succeed InternationalCarFerry

                    "nationalCarFerry" ->
                        Decode.succeed NationalCarFerry

                    "regionalCarFerry" ->
                        Decode.succeed RegionalCarFerry

                    "localCarFerry" ->
                        Decode.succeed LocalCarFerry

                    "internationalPassengerFerry" ->
                        Decode.succeed InternationalPassengerFerry

                    "nationalPassengerFerry" ->
                        Decode.succeed NationalPassengerFerry

                    "regionalPassengerFerry" ->
                        Decode.succeed RegionalPassengerFerry

                    "localPassengerFerry" ->
                        Decode.succeed LocalPassengerFerry

                    "postBoat" ->
                        Decode.succeed PostBoat

                    "trainFerry" ->
                        Decode.succeed TrainFerry

                    "roadFerryLink" ->
                        Decode.succeed RoadFerryLink

                    "airportBoatLink" ->
                        Decode.succeed AirportBoatLink

                    "highSpeedVehicleService" ->
                        Decode.succeed HighSpeedVehicleService

                    "highSpeedPassengerService" ->
                        Decode.succeed HighSpeedPassengerService

                    "sightseeingService" ->
                        Decode.succeed SightseeingService

                    "schoolBoat" ->
                        Decode.succeed SchoolBoat

                    "cableFerry" ->
                        Decode.succeed CableFerry

                    "riverBus" ->
                        Decode.succeed RiverBus

                    "scheduledFerry" ->
                        Decode.succeed ScheduledFerry

                    "shuttleFerryService" ->
                        Decode.succeed ShuttleFerryService

                    "communalTaxi" ->
                        Decode.succeed CommunalTaxi

                    "charterTaxi" ->
                        Decode.succeed CharterTaxi

                    "waterTaxi" ->
                        Decode.succeed WaterTaxi

                    "railTaxi" ->
                        Decode.succeed RailTaxi

                    "bikeTaxi" ->
                        Decode.succeed BikeTaxi

                    "blackCab" ->
                        Decode.succeed BlackCab

                    "miniCab" ->
                        Decode.succeed MiniCab

                    "allTaxiServices" ->
                        Decode.succeed AllTaxiServices

                    "hireCar" ->
                        Decode.succeed HireCar

                    "hireVan" ->
                        Decode.succeed HireVan

                    "hireMotorbike" ->
                        Decode.succeed HireMotorbike

                    "hireCycle" ->
                        Decode.succeed HireCycle

                    "allHireVehicles" ->
                        Decode.succeed AllHireVehicles

                    _ ->
                        Decode.fail ("Invalid TransportSubmode type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TransportSubmode -> String
toString enum =
    case enum of
        Unknown ->
            "unknown"

        Undefined ->
            "undefined"

        InternationalFlight ->
            "internationalFlight"

        DomesticFlight ->
            "domesticFlight"

        IntercontinentalFlight ->
            "intercontinentalFlight"

        DomesticScheduledFlight ->
            "domesticScheduledFlight"

        ShuttleFlight ->
            "shuttleFlight"

        IntercontinentalCharterFlight ->
            "intercontinentalCharterFlight"

        InternationalCharterFlight ->
            "internationalCharterFlight"

        RoundTripCharterFlight ->
            "roundTripCharterFlight"

        SightseeingFlight ->
            "sightseeingFlight"

        HelicopterService ->
            "helicopterService"

        DomesticCharterFlight ->
            "domesticCharterFlight"

        SchengenAreaFlight ->
            "SchengenAreaFlight"

        AirshipService ->
            "airshipService"

        ShortHaulInternationalFlight ->
            "shortHaulInternationalFlight"

        CanalBarge ->
            "canalBarge"

        LocalBus ->
            "localBus"

        RegionalBus ->
            "regionalBus"

        ExpressBus ->
            "expressBus"

        NightBus ->
            "nightBus"

        PostBus ->
            "postBus"

        SpecialNeedsBus ->
            "specialNeedsBus"

        MobilityBus ->
            "mobilityBus"

        MobilityBusForRegisteredDisabled ->
            "mobilityBusForRegisteredDisabled"

        SightseeingBus ->
            "sightseeingBus"

        ShuttleBus ->
            "shuttleBus"

        HighFrequencyBus ->
            "highFrequencyBus"

        DedicatedLaneBus ->
            "dedicatedLaneBus"

        SchoolBus ->
            "schoolBus"

        SchoolAndPublicServiceBus ->
            "schoolAndPublicServiceBus"

        RailReplacementBus ->
            "railReplacementBus"

        DemandAndResponseBus ->
            "demandAndResponseBus"

        AirportLinkBus ->
            "airportLinkBus"

        InternationalCoach ->
            "internationalCoach"

        NationalCoach ->
            "nationalCoach"

        ShuttleCoach ->
            "shuttleCoach"

        RegionalCoach ->
            "regionalCoach"

        SpecialCoach ->
            "specialCoach"

        SchoolCoach ->
            "schoolCoach"

        SightseeingCoach ->
            "sightseeingCoach"

        TouristCoach ->
            "touristCoach"

        CommuterCoach ->
            "commuterCoach"

        Funicular ->
            "funicular"

        StreetCableCar ->
            "streetCableCar"

        AllFunicularServices ->
            "allFunicularServices"

        UndefinedFunicular ->
            "undefinedFunicular"

        Metro ->
            "metro"

        Tube ->
            "tube"

        UrbanRailway ->
            "urbanRailway"

        CityTram ->
            "cityTram"

        LocalTram ->
            "localTram"

        RegionalTram ->
            "regionalTram"

        SightseeingTram ->
            "sightseeingTram"

        ShuttleTram ->
            "shuttleTram"

        TrainTram ->
            "trainTram"

        Telecabin ->
            "telecabin"

        CableCar ->
            "cableCar"

        Lift ->
            "lift"

        ChairLift ->
            "chairLift"

        DragLift ->
            "dragLift"

        TelecabinLink ->
            "telecabinLink"

        Local ->
            "local"

        HighSpeedRail ->
            "highSpeedRail"

        SuburbanRailway ->
            "suburbanRailway"

        RegionalRail ->
            "regionalRail"

        InterregionalRail ->
            "interregionalRail"

        LongDistance ->
            "longDistance"

        International ->
            "international"

        SleeperRailService ->
            "sleeperRailService"

        NightRail ->
            "nightRail"

        CarTransportRailService ->
            "carTransportRailService"

        TouristRailway ->
            "touristRailway"

        AirportLinkRail ->
            "airportLinkRail"

        RailShuttle ->
            "railShuttle"

        ReplacementRailService ->
            "replacementRailService"

        SpecialTrain ->
            "specialTrain"

        CrossCountryRail ->
            "crossCountryRail"

        RackAndPinionRailway ->
            "rackAndPinionRailway"

        InternationalCarFerry ->
            "internationalCarFerry"

        NationalCarFerry ->
            "nationalCarFerry"

        RegionalCarFerry ->
            "regionalCarFerry"

        LocalCarFerry ->
            "localCarFerry"

        InternationalPassengerFerry ->
            "internationalPassengerFerry"

        NationalPassengerFerry ->
            "nationalPassengerFerry"

        RegionalPassengerFerry ->
            "regionalPassengerFerry"

        LocalPassengerFerry ->
            "localPassengerFerry"

        PostBoat ->
            "postBoat"

        TrainFerry ->
            "trainFerry"

        RoadFerryLink ->
            "roadFerryLink"

        AirportBoatLink ->
            "airportBoatLink"

        HighSpeedVehicleService ->
            "highSpeedVehicleService"

        HighSpeedPassengerService ->
            "highSpeedPassengerService"

        SightseeingService ->
            "sightseeingService"

        SchoolBoat ->
            "schoolBoat"

        CableFerry ->
            "cableFerry"

        RiverBus ->
            "riverBus"

        ScheduledFerry ->
            "scheduledFerry"

        ShuttleFerryService ->
            "shuttleFerryService"

        CommunalTaxi ->
            "communalTaxi"

        CharterTaxi ->
            "charterTaxi"

        WaterTaxi ->
            "waterTaxi"

        RailTaxi ->
            "railTaxi"

        BikeTaxi ->
            "bikeTaxi"

        BlackCab ->
            "blackCab"

        MiniCab ->
            "miniCab"

        AllTaxiServices ->
            "allTaxiServices"

        HireCar ->
            "hireCar"

        HireVan ->
            "hireVan"

        HireMotorbike ->
            "hireMotorbike"

        HireCycle ->
            "hireCycle"

        AllHireVehicles ->
            "allHireVehicles"
