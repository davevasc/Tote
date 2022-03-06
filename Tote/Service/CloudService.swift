//
//  CloudService.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

enum CloudError: Error, Identifiable {
    case serverError
    case noData

    var id: Self {
        self
    }
}

protocol CloudService {
    func fetchUsers() async throws -> [User]
    func fetchChats() async throws -> [Chat]
}

final class CloudServiceImpl: CloudService {
    
    // Async Await Method...
    func fetchUsers() async throws -> [User] {
        let db = Firestore.firestore().collection("Users")
        let users = try await db.getDocuments()
        return users.documents.compactMap( { user in
            return try? user.data(as: User.self)
        })
    }
    
    // Async Await Method...
    func fetchChats() async throws -> [Chat] {
        let db = Firestore.firestore().collection("Chats")
        let chats = try await db.getDocuments()
        return chats.documents.compactMap( { chat in
            return try? chat.data(as: Chat.self)
        })
    }
    
}
