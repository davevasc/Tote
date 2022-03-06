//
//  Chat.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import Foundation

struct Chat: Identifiable, Codable {
    var id = UUID().uuidString
    var img: String
    var name: String
    var note: String
    var text: String
    
    enum CodingKeys: String, CodingKey {
        case img
        case name
        case note
        case text
    }
}
