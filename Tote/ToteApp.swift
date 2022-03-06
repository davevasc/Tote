//
//  ToteApp.swift
//  Tote
//
//  Created by David Vicente on 20/1/22.
//

import SwiftUI
import Firebase

@main
struct ToteApp: App {
    
    // Init Firebase
    init() {
        FirebaseApp.configure()
    }
    
    // Subida de mac al beta
    
    var body: some Scene {
        WindowGroup {
            ListView()
        }
    }
}
