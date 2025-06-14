//
// FlightAlertRoute.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FlightAlertRoute: Codable {

    public var _id: Int?
    public var origin: String
    public var destination: String
    public var departureDate: Date
    public var returnDate: Date
    public var currency: String
    public var currentPrice: Int?
    public var lastNotifiedPrice: Int?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(_id: Int?, origin: String, destination: String, departureDate: Date, returnDate: Date, currency: String, currentPrice: Int?, lastNotifiedPrice: Int?, createdAt: Date?, updatedAt: Date?) {
        self._id = _id
        self.origin = origin
        self.destination = destination
        self.departureDate = departureDate
        self.returnDate = returnDate
        self.currency = currency
        self.currentPrice = currentPrice
        self.lastNotifiedPrice = lastNotifiedPrice
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case origin
        case destination
        case departureDate = "departure_date"
        case returnDate = "return_date"
        case currency
        case currentPrice = "current_price"
        case lastNotifiedPrice = "last_notified_price"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }


}

