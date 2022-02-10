//
//  WeatherManager.swift
//  WeatherApp-IOS
//
//  Created by Amjad Oudeh on 10.02.22.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("48052b9e15e4b93a6ed219544a3fb7af")&units=metric") else { fatalError("Missing URL")}
        
        let urlRequest =  URLRequest(url: url)
        
        let (data, response) = try await URLRequest.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data")}
    }
}
