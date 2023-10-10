//
//  ApiRepository.swift
//  Wattblock
//
//  Created by Pascal Mönch on 10.10.23.
//

import Foundation

class ApiRepository {
    
    private static var apiKey = "9c8f4bfc93msh74070000021f377p1f291cjsn5bc682b398ed"
    
    static func fetchUserNames() async throws -> [UserName] {
        let headers = [
            "X-RapidAPI-Key": apiKey,
            "X-RapidAPI-Host": "germany-fake-person-address.p.rapidapi.com"
        ]
        
        guard let url = URL(string: "https://germany-fake-person-address.p.rapidapi.com/random-person") else {
            throw HTTPError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return try JSONDecoder().decode([UserName].self, from: data)
    }
}
