import Foundation

public struct FlightJSONValue: Codable {
    public var origin: String
    public var destination: String
    public var date: String
    
    public init(origin: String, destination: String, date: String) {
        self.origin = origin
        self.destination = destination
        self.date = date
        
    }

    public enum CodingKeys: String, CodingKey {
        case origin
        case destination
        case date
    }
}
