//
//  CityWeatherPresenter.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation

protocol CityWeatherPresenter {
    func selectCity(_ index: Int)
}

class CityWeatherPresenterImpl: CityWeatherPresenter {
    
    private let useCase: CityWeatherUseCase
    
    public required init(useCase: CityWeatherUseCase) {
        self.useCase = useCase
    }
    
    func selectCity(_ index: Int) {
        //useCase.getWeather(by: )
    }
    
}
