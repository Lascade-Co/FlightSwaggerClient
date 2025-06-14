//
// FlightCountry.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FlightCountry: Codable {

    public var name: String
    public var code: String
    public var currency: FlightCurrency?
    public var flag: String?

    public init(name: String, code: String, currency: FlightCurrency?, flag: String?) {
        self.name = name
        self.code = code
        self.currency = currency
        self.flag = flag
    }


}

