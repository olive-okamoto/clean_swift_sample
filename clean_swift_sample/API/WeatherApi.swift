//
//  API.swift
//  clean_swift_sample
//
//  Created by RyoOkamto on 2020/01/26.
//  Copyright © 2020 oliveapps. All rights reserved.
//

import RxSwift
import Moya

private let API_KEY = "77d3161216cca86d9b842db3854500c8"
private let BASE_URL = "http://api.openweathermap.org/data/2.5"

class WeatherApi {
    static let shared = WeatherApi()
    private let provider = MoyaProvider<MultiTarget>()
    
    func request<R>(_ request: R) -> Single<R.Response> where R: WeatherApiTargetType {
        let target = MultiTarget(request)
        return provider.rx.request(target)
            .filterSuccessfulStatusCodes()
            .map(R.Response.self)
    }
}

protocol WeatherApiTargetType: TargetType {
    associatedtype Response: Codable
}

extension WeatherApiTargetType {
    var baseURL: URL {
        return URL(string: BASE_URL)!
    }
    var method: Moya.Method { return .get }
    var headers: [String : String]? { return ["Content-type": "application/json"] }
    // テストの時などに、実際にAPIを叩かずにローカルのjsonファイルを読み込める
    var sampleData: Data {
        let path = Bundle.main.path(forResource: "samples", ofType: "json")!
        return FileHandle(forReadingAtPath: path)!.readDataToEndOfFile()
    }
}

enum OpenWeatherApi {
}
