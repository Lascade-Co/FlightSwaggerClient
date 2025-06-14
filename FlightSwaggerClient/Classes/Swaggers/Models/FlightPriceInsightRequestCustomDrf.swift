//
// FlightPriceInsightRequestCustomDrf.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FlightPriceInsightRequestCustomDrf: Codable {

    /** Origin airport code */
    public var origin: String
    /** Destination airport code */
    public var destination: String
    /** Departure date in dd-mm-yyyy format */
    public var departure: String
    /** Whether the trip is round trip */
    public var roundTrip: Bool

    public init(origin: String, destination: String, departure: String, roundTrip: Bool) {
        self.origin = origin
        self.destination = destination
        self.departure = departure
        self.roundTrip = roundTrip
    }

    public enum CodingKeys: String, CodingKey { 
        case origin
        case destination
        case departure
        case roundTrip = "round_trip"
    }


}

