//
//  CityWeatherPresenter.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/02/09.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import Foundation
import RxSwift

protocol CityWeatherPresenter {
    func getCityList()
    func selectCity(_ index: Int)
}

class CityWeatherPresenterImpl: CityWeatherPresenter {
    
    let useCase: CityWeatherUseCase
    let cityUseCase: CityListUseCase
    var cityListModel: CityListModel?
    
    private let disposeBag = DisposeBag()
    
    public required init(useCase: CityWeatherUseCase, cityUseCase: CityListUseCase) {
        self.useCase = useCase
        self.cityUseCase = cityUseCase
    }
    
    func getCityList() {
        cityUseCase.getCityList()
            .subscribe(
                onNext: { [weak self] cityList in
                    self?.loadCityListModel(cityList: cityList)
                }, onError: nil, onCompleted: nil, onDisposed: nil)
            .disposed(by: disposeBag)
    }
    
    func selectCity(_ index: Int) {
        guard let cityListModel = cityListModel else { return }
        
        let selectedCity: CityModel = cityListModel.cities[index]
        
        useCase.getWeather(by: selectedCity)
            .subscribe(
                onNext: { [weak self] weather in
                    // TODO: Display weather in a different view
                }, onError: { [weak self] error in
                    // TODO: Error handling
                }, onCompleted: nil, onDisposed: nil)
            .disposed(by: disposeBag)
    }
    
}

// MARK: - Private
extension CityWeatherPresenterImpl {
    
    fileprivate func loadCityListModel(cityList: CityListModel) {
        DispatchQueue.main.async {
            self.cityListModel = cityList
        }
    }
    
}
