//
//  Home.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import SwiftUI

struct Home: View {
    // STATE OBJECT se mantienen vivos durante la vida útil de la vista
        // Se mantiene el mismo estado en la memoria y evita perder datos
//        @StateObject private var vm = QuotesViewModelImpl(
//            service: QuoteServiceImpl())
        var body: some View {
            
          ProgressView("Loading Users...")
            
        }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
