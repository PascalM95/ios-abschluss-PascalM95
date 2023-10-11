//
//  WeatherView.swift
//  Wattblock
//
//  Created by Pascal Mönch on 11.10.23.
//

import SwiftUI

struct WeatherView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.bavarianBlue
                    .edgesIgnoringSafeArea(.top)
                Illustrations.weatherBackground
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.bottom)
                
                
                VStack {
                    if weatherViewModel.search.isEmpty {
                        Text("Wetter in Berlin:")
                            .font(Fonts.title1)
                            .bold()
                    } else {
                        Text("Wetter in \(weatherViewModel.search)")
                            .font(Fonts.title1)
                            .bold()
                    }
                    
                    Spacer()
                    
                    Text("Temperatur: \(weatherViewModel.weather.main.temp, specifier: "%.1f") °C")
                        .font(Fonts.headline)
                        .padding()
                    
                    Text("Gefühlt: \(weatherViewModel.weather.main.feels_like, specifier: "%.1f") °C")
                        .font(Fonts.headline)
                        .padding()
                    
                    Text("Luftfeuchtigkeit: \(weatherViewModel.weather.main.humidity) %")
                        .font(Fonts.headline)
                        .padding()
                    
                    Spacer()
                    Spacer()
                }
                .searchable(text: $weatherViewModel.search)
                .onSubmit(of: .search) {
                    weatherViewModel.fetchData()
                }
                .onAppear(perform: {
                    weatherViewModel.fetchData()
                })
                .padding()
            }
        }
    }
    
    
    
    // MARK: - Variables
    
    @StateObject private var weatherViewModel = WeatherViewModel()
    
}

#Preview {
    WeatherView()
}
