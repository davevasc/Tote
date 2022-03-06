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
    
/** obtenido de la nube solo desde BETA. añadiendo BETA2. EDITADO EN LA NUBE **/
    
    var body: some Scene {
        WindowGroup {
            ListView()
        }
    }
}
