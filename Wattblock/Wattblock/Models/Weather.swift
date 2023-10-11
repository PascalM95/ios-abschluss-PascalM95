//
//  Weather.swift
//  Wattblock
//
//  Created by Pascal Mönch on 11.10.23.
//

import Foundation

import Foundation

struct Weather: Codable {
    var main: CurrentWeather
}

struct CurrentWeather: Codable {
    var temp: Double
    var feels_like: Double
    var humidity: Int
}
