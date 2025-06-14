//
// FlightProviderFilterData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FlightProviderFilterData: Codable {

    public var code: String
    public var name: String
    public var image: String

    public init(code: String, name: String, image: String) {
        self.code = code
        self.name = name
        self.image = image
    }


}

