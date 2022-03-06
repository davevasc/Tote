//
//  Contact.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import Foundation

struct Contact: Identifiable, Codable {
    
    var id = UUID().uuidString
    var user: String
    var userRef: String
    
    enum CodingKeys: String, CodingKey {
        case user
        case userRef
    }
}
