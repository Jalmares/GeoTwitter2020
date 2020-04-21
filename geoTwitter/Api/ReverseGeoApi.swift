//
//  reverseGeoApi.swift
//  geoTwitter
//
//  Created by Niko Holopainen on 20.4.2020.
//  Copyright © 2020 enarm. All rights reserved.
//

import Foundation
import RxSwift

class ReverseGeoApi {
    private let networkService = NetworkServiceNoAuth()
    
    func useReverseGeoCode(_ cityName: String) -> Observable<TweetLocation> {
        let url = "https://api.opencagedata.com/geocode/v1/json?q=\(cityName)&key=\(Keys.reverseGeoApi.rawValue)"
        return networkService.apiFetchGET(url: url)
    }
}
