//
//  CityDataStore.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import RxSwift

// MARK: - Interface
public protocol CityListDataStore {
    func getCityList() -> Observable<[CityModel]>
}

// MARK: - Implementation
struct CityListDataStoreImpl: CityListDataStore {
    
    func getCityList() -> Observable<[CityModel]> {
        return Observable.create { observer in
            observer.onNext(CityModel.getSampleCityList())
            return Disposables.create()
        }
    }
    
}
