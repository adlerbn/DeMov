//
//  Request.swift
//  DeMov
//
//  Created by Yahya Bn on 11/05/1400 AP.
//

import Foundation

struct Request {
    let baseURL: String
    let urlExtension: URLExtension
    var urlString: String {
        return baseURL + urlExtension.rawValue
    }
    let httpMethod: String
    
    enum HttpMethod: String {
        case GET
        case POST
        case DELETE
    }

    enum URLExtension: String {
        case login = "/account/login"
        case register = "/account/register"
        case validation = "/account/validation"
        case specialOffer = "/foods/special-offer"
        case highestScores = "/foods/highest-scores"
        case bestSelling = "/foods/best-selling"
        case wishlist = "/wishlist"
        case foodsList = "/foods"
        case food = "/foods/"
    }
}
