//
//  WeatherDataStore.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/01/31.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation
import RxSwift

// MARK: - Interface
public protocol WeatherDataStore {
    func getWeather(by city: String, country: String, app_id: String)
}

// MARK: - Implementation
struct WeatherDataStoreImpl: WeatherDataStore {
    
    private var disposeBag = DisposeBag()
    
    func getWeather(by city: String, country: String, app_id: String) {
        WeatherApi.shared.request(OpenWeatherApi.GetWeatherByName(city: city, country: country, app_id: app_id))
            .subscribe(onSuccess: { result in
                
            }, onError: { error in
                
            })
            .disposed(by: disposeBag)
    }
    
}
