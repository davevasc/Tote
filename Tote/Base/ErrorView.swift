//
//  ErrorView.swift
//  Tote
//
//  Created by David Vicente on 23/1/22.
//

import SwiftUI

struct ErrorView: View {
    let error: Error

       var body: some View {
           print(error)
           return Text("❌ **Error**").font(.system(size: 60))
       }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: CloudError.noData)
    }
}
