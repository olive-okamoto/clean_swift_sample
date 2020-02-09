//
//  CityListUseCase.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation
import RxSwift

protocol CityListUseCase {
    func getCityList() -> Observable<CityListModel>
}

struct CityListUseCaseImpl: CityListUseCase {
    private let repository: CityListRepository
    
    init(repository: CityListRepository) {
        self.repository = repository
    }
    
    func getCityList() -> Observable<CityListModel> {
        return repository.getCityList()
    }
}

