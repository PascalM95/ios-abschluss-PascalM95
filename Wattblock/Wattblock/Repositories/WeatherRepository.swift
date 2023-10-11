//
//  WeatherRepository.swift
//  Wattblock
//
//  Created by Pascal Mönch on 11.10.23.
//

import Foundation

class WeatherRepository {
    
    private static var weatherAPIKey = "2f8c6778a5c283d9178b50b6fb60d048"
    
    static func fetchWeather(search: String) async throws -> Weather {
        
        var searchString: String {
            if search.isEmpty {
                return "Berlin"
            } else {
                return "\(search)"
            }
        }
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(searchString)&appid=\(weatherAPIKey)&units=metric") else {
            throw HTTPError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        return try JSONDecoder().decode(Weather.self, from: data)
    }
}
