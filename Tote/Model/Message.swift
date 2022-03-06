//
//  Message.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import Foundation
import Firebase

struct Message: Identifiable, Codable {
    var id = UUID().uuidString
    var sender: String
    var date: Timestamp
    var text: String
    
    enum CodingKeys: String, CodingKey {
        case sender
        case date
        case text
    }
}
