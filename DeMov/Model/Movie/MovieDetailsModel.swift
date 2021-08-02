//
//  MovieDetailsModel.swift
//  DeMov
//
//  Created by Yahya Bn on 11/05/1400 AP.
//

import Foundation

struct MovieDetailsModel: Codable {
    let id: String
    let title: String
    let year: String
    let length: String
    let rating_votes: String
    let poster: String
    let plot: String
    let trailer: Trailer
    let cast: CastModel
    let technical_specs: TechnicalSpecs
}

struct Trailer: Codable {
    let id: String
    let link: String
}

struct TechnicalSpecs: Codable {
    let technical_specs: [TechnicalSpec]
}

struct TechnicalSpec: Codable {
    let array: [Spec]
}

struct Spec: Codable {
    
}
