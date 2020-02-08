//
//  CityWeatherUseCase.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/08.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation
import RxSwift

// MARK: - Interface
protocol CityWeatherUseCase {
    func getWeather(by cityData: CityData) -> Observable<WeatherModel>
}

// MARK: - Inplementation
struct CityWeatherUseCaseImpl: CityWeatherUseCase {
    private let repository: CityWeatherRepository
    
    init(repository: CityWeatherRepository) {
        self.repository = repository
    }
    
    func getWeather(by cityData: CityData) -> Observable<WeatherModel> {
        return repository.getWeather(by: cityData)
    }
}
