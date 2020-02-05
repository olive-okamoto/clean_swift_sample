//
//  WeatherModel.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/01/26.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation

public struct WeatherModel: Codable {
    let base: String
    let clouds: Clouds
    let cod: Int
    let coord: Coord
    let dt: Int
    let id: Int
    let main: Main
    let name: String
    let sys: Sys
    let timezone: Int
    let visibility: Int
    let weather: [Weather]
    let wind: Wind
}

extension WeatherModel {
    struct Coord: Codable {
        let lat: Float
        let lon: Float
    }
    
    struct Weather: Codable {
        let id: Int
        let main: String
        let description: String
        let icon: String
    }
    
    struct Main: Codable {
        let feels_like: Float
        let temp: Float
        let temp_min: Float
        let temp_max: Float
        let pressure: Int
        let humidity: Int
    }
    
    struct Wind: Codable {
        let speed: Float
        let deg: Int
    }
    
    struct Clouds: Codable {
        let all: Int
    }
    
    struct Sys: Codable {
        let type: Int
        let id: Int
        let country: String
        let sunrise: Int
        let sunset: Int
    }
}
