//
//  WeatherModel.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/01/26.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation

struct WeatherModel: Codable {
    let coord: Coordinate
    let weather: [Weather]
    let base: String
    let main: Main
    let visibility: Float
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone: Int
    let id: Int
    let name: String
    let cod: Int
}

extension WeatherModel {
    struct Coordinate: Codable {
        let lon: Float
        let lat: Float
    }
    
    struct Weather: Codable {
        let id: Int
        let main: String
        let desctiption: String
        let icon: String
    }
    
    struct Main: Codable {
        let temp: Float
        let feels_like: Float
        let temp_min: Float
        let temp_max: Float
        let pressure: Float
        let humidity: Float
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
