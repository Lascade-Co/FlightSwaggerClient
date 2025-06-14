//
// FlightAlertUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FlightAlertUser: Codable {

    public var _id: String
    public var pushToken: String
    public var isActive: Bool?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(_id: String, pushToken: String, isActive: Bool?, createdAt: Date?, updatedAt: Date?) {
        self._id = _id
        self.pushToken = pushToken
        self.isActive = isActive
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case pushToken = "push_token"
        case isActive = "is_active"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }


}

