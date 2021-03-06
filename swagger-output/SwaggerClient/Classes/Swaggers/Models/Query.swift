//
// Query.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Query: Codable {

    public var tokens: Tokens?


    
    public init(tokens: Tokens?) {
        self.tokens = tokens
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(tokens, forKey: "tokens")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        tokens = try container.decodeIfPresent(Tokens.self, forKey: "tokens")
    }
}

