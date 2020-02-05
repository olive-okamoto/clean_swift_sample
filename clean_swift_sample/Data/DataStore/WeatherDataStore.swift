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
    func getWeather(by city: String, country: String, app_id: String) -> Observable<WeatherModel>
}

// MARK: - Implementation
struct WeatherDataStoreImpl: WeatherDataStore {
    
    private var disposeBag = DisposeBag()
    
    func getWeather(by city: String, country: String, app_id: String) -> Observable<WeatherModel> {
        return Observable.create { observer in
            WeatherApi.shared.request(OpenWeatherApi.GetWeatherByName(city: city, country: country, app_id: app_id))
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
