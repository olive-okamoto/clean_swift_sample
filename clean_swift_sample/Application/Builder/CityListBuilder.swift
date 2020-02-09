//
//  CityListBuilder.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import UIKit

struct CityListBuilder {
    func build() -> UIViewController {
        let vc = CityListViewController.instantiate(withStoryboard: CityListViewController.className)
        let useCase = CityWeatherUseCaseImpl(
            repository: CityWeatherRepositoryImpl(
                dataStore: CityWeatherDataStoreImpl()
            )
        )
        let cityListUseCase = CityListUseCaseImpl(
            repository: CityListRepositoryImpl(
                dataStore: CityListDataStoreImpl()
            )
        )
        
        let presenter = CityListPresenterImpl(
            viewInput: vc,
            useCase: useCase,
            cityUseCase: cityListUseCase
        )
        vc.inject(presenter: presenter)
        
        return vc
    }
}
