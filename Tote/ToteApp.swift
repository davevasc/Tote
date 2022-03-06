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
        // esto se tiene que borrar tambien
    }
    
    // Subida de mac al beta
    // subida solo a BETA
    // esto se tiene que borrar de local
    // Borrar de local pero accediendo a beta
    // BORRAR DE LOCAL BORRAR DE LOCAL
    
    var body: some Scene {
        WindowGroup {
            ListView()
        }
    }
}
