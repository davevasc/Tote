//
//  User.swift
//  Tote
//
//  Created by David Vicente on 20/1/22.
//

import Foundation

struct User: Identifiable, Codable {
    var id = UUID().uuidString
    var img: String
    var mail: String
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case img
        case mail
        case name
    }
}
