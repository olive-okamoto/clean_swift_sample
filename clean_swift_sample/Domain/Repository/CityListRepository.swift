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
    func getCityList() -> Observable<[CityModel]>
}

// MARK: - Inplementation
struct CityListRepositoryImpl: CityListRepository {
 
    private let dataStore: CityListDataStore
    
    public init(dataStore: CityListDataStore) {
        self.dataStore = dataStore
    }
    
    func getCityList() -> Observable<[CityModel]> {
        return dataStore.getCityList()
    }
    
}
