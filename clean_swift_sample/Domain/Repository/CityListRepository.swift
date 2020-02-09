//
//  CityListRepository.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import RxSwift

// MARK: - Interface
public protocol CityListRepository {
    func getCities() -> Observable<[CityModel]>
}

// MARK: - Inplementation
struct CityListRepositoryImpl: CityWeatherRepository {
    
    private let dataStore: CityDataStore
    
    public init(dataStore: CityDataStore) {
        self.dataStore = dataStore
    }
    
    func getCities() -> Observable<[CityModel]> {
        return dataStore.getCities()
    }
    
}
