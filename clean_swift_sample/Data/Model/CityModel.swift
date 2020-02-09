//
//  CityData.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/08.
//  Copyright © 2020 oliveapps. All rights reserved.
//

public struct CityModel {
    var city: String
    var city_jp: String
    var country: String
    
    init(city: String, city_jp: String, country: String) {
        self.city = city
        self.city_jp = city_jp
        self.country = country
    }
    
    static func getSampleCityList() -> [CityModel] {
        return [
            CityModel(city: "Hokkaido", city_jp: "北海道", country: "jp"),
            CityModel(city: "Tokyo", city_jp: "東京", country: "jp"),
            CityModel(city: "Osaka", city_jp: "大阪", country: "jp"),
            CityModel(city: "Fukuoka", city_jp: "福岡", country: "jp"),
            CityModel(city: "Okinawa", city_jp: "沖縄", country: "jp")
        ]
    }
}
