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
    // ESTO ESTA EDITADO EN MAC, PERO QUIERO QUE DESAPAREZCA COGIENDO DESDE LA NUBE
    
    var body: some Scene {
        WindowGroup {
            ListView()
        }
    }
}
