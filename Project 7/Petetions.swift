//
//  Data.swift
//  Project 7
//
//  Created by Mohamed Sayed on 01.12.23.
//

import Foundation

struct Petetions: Codable {
    var results: [Petetion]
}
struct Petetion: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
