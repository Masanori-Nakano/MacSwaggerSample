//
// Tokens.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Tokens: Codable {

    public var logintoken: String?


    
    public init(logintoken: String?) {
        self.logintoken = logintoken
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(logintoken, forKey: "logintoken")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        logintoken = try container.decodeIfPresent(String.self, forKey: "logintoken")
    }
}

