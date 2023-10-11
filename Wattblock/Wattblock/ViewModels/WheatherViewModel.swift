//
//  WheatherViewModel.swift
//  Wattblock
//
//  Created by Pascal Mönch on 11.10.23.
//

import Foundation

@MainActor
class WeatherViewModel: ObservableObject {
    
    init() {
        fetchData()
    }
    
    
    
    // MARK: - Variables
    
    @Published var weather = Weather(main: CurrentWeather(temp: 0, feels_like: 0, humidity: 0))
    @Published var search = ""
    
    
    
    // MARK: - Functions
    
    func fetchData() {
        Task {
            do {
                self.weather = try await WeatherRepository.fetchWeather(search: search)
            } catch {
                print("Request failed: ", error.localizedDescription)
            }
        }
    }
}
