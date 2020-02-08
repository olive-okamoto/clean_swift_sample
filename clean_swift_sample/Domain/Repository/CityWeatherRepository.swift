//
//  CityWeatherRepository.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/08.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import RxSwift

// MARK: - Interface
public protocol CityWeatherRepository {
    func getWeather(by cityData: CityData) -> Observable<WeatherModel>
}

// MARK: - Inplementation
struct CityWeatherRepositoryImpl: CityWeatherRepository {
    
    private let dataStore: CityWeatherDataStore
    
    public init(dataStore: CityWeatherDataStore) {
        self.dataStore = dataStore
    }
    
    func getWeather(by cityData: CityData) -> Observable<WeatherModel> {
        return dataStore.getWeather(by: cityData)
    }
    
}
