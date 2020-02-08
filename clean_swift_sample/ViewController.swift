//
//  ViewController.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/01/26.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import UIKit
import Moya

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        WeatherApi.shared.request(OpenWeatherApi.GetWeatherByName(city: "Tokyo", country: "jp", app_id: Config.OPEN_WEATHER_API_KEY))
            .subscribe(onSuccess: { data in
                print(data)
            }, onError: { error in
                print(error)
                do {
                     let errorResponse = error as? Moya.MoyaError
                     if let body = try errorResponse?.response?.mapJSON(){
                          print(body)
                     }
                } catch {
                     print(error)
                }
            })
    }


}

