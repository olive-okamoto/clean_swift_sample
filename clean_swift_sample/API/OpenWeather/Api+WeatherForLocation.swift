//
//  Api+WeatherForLocation.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/01/26.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation
import Moya

extension OpenWeatherApi {
    struct GetWeatherByName: WeatherApiTargetType {
        
        typealias Response = WeatherModel
        
        var parameters: [String: Any] = [:]
        
        var path: String { return "/weather" }
        var task: Task { return .requestParameters(parameters: parameters, encoding: URLEncoding.default) }
        
        init(city: String, country: String, app_id: String) {
            parameters["q"] = city + "," + country
            parameters["APPID"] = app_id
        }
    }
}
