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
        
        let city: String
        let country: String
        let app_id: String
        
        var path: String { return "?q=\(city),\(country)&APPID=\(app_id)" }
        var task: Task { return .requestPlain }
        
        init(city: String, country: String, app_id: String) {
            self.city = city
            self.country = country
            self.app_id = app_id
        }
    }
}
