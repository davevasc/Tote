//
//  Member.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct Member: Identifiable, Codable {
    //    @DocumentID var a: String?
    
    var id = UUID().uuidString
    var user: String
    var userRef: String
    
    enum CodingKeys: String, CodingKey {
        case user
        case userRef
    }
}
