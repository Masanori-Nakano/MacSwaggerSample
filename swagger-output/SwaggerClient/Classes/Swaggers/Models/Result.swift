//
// Result.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Result: Codable {

    public var query: Query?


    
    public init(query: Query?) {
        self.query = query
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(query, forKey: "query")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        query = try container.decodeIfPresent(Query.self, forKey: "query")
    }
}

