//
//  GenreModel.swift
//  DeMov
//
//  Created by Yahya Bn on 11/05/1400 AP.
//

import Foundation

struct GenreModel: Codable {
    let Genres: [Genre]
}

struct Genre: Codable {
    let genre: String
}
