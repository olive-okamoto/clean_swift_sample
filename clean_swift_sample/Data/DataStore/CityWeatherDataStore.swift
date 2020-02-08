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
public protocol CityWeatherDataStore {
    func getWeather(by city: String, country: String) -> Observable<WeatherModel>
}

// MARK: - Implementation
struct CityWeatherDataStoreImpl: CityWeatherDataStore {
    
    private var disposeBag = DisposeBag()
    
    func getWeather(by city: String, country: String) -> Observable<WeatherModel> {
        return Observable.create { observer in
            WeatherApi.shared.request(OpenWeatherApi.GetWeatherByName(city: city, country: country))
                .subscribe(onSuccess: { result in
                    observer.onNext(result)
                    observer.onCompleted()
                }, onError: { error in
                    observer.onError(error)
                })
                .disposed(by: self.disposeBag)
            
            return Disposables.create()
        }
    }
    
}
