//
//  CastModel.swift
//  DeMov
//
//  Created by Yahya Bn on 11/05/1400 AP.
//

import Foundation

struct CastModel: Codable {
    let cast: [Cast]
}

struct Cast: Codable {
    let actor: String
    let actor_id: String
    let character: String
}
