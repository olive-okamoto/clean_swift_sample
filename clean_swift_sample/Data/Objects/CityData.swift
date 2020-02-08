//
//  CityData.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/08.
//  Copyright © 2020 oliveapps. All rights reserved.
//

struct CityData {
    var city: String
    var city_jp: String
    var country: String
    
    init(city: String, city_jp: String, country: String) {
        self.city = city
        self.city_jp = city_jp
        self.country = country
    }
}

struct SampleCityList {
    let data: [CityData] = [
        CityData(city: "Hokkaido", city_jp: "北海道", country: "jp"),
        CityData(city: "Tokyo", city_jp: "東京", country: "jp"),
        CityData(city: "Osaka", city_jp: "大阪", country: "jp"),
        CityData(city: "Fukuoka", city_jp: "福岡", country: "jp"),
        CityData(city: "Okinawa", city_jp: "沖縄", country: "jp")
    ]
}
