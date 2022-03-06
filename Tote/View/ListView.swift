//
//  ListView.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import SwiftUI

struct ListView: View {
    // STATE OBJECT se mantienen vivos durante la vida útil de la vista
    // Se mantiene el mismo estado en la memoria y evita perder datos
    @StateObject private var vm = ListViewModelImpl(
        service: CloudServiceImpl())
    var body: some View {
        NavigationView {
            
            
            
            Group {
                if vm.users.isEmpty {
                    ProgressView("Loading Users")
                } else {
                    
                    
                    List {
                        VStack {
                            Text("Users")
                            ForEach(vm.users) {user in
                                HStack(spacing: 15) {
                                    AsyncImage(url: URL(string: user.img)) { pharse in
                                        switch pharse {
                                        case .success(let image):
                                            image.resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 150, height: 150)
                                                .cornerRadius(15)
                                        case .failure(let error):
                                            ErrorView(error: error)
                                        case .empty: ProgressView("Loading image...")
                                        @unknown default: Image(systemName: "questionmark")
                                        }
                                    }
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(user.name)
                                            .font(.title2.bold())
                                        Text(user.mail)
                                            .font(.title2)
                                    }
                                }
                            }
                            
                            Text("Chats")
                            ForEach(vm.users) {user in
                                HStack(spacing: 15) {
                                    AsyncImage(url: URL(string: user.img)) { pharse in
                                        switch pharse {
                                        case .success(let image):
                                            image.resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 150, height: 150)
                                                .cornerRadius(15)
                                        case .failure(let error):
                                            ErrorView(error: error)
                                        case .empty: ProgressView("Loading image...")
                                        @unknown default: Image(systemName: "questionmark")
                                        }
                                    }
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(user.name)
                                            .font(.title2.bold())
                                        Text(user.mail)
                                            .font(.title2)
                                    }
                                }
                            }
                            
                        }
                        
                        
                    }
                    
                    
                    
                }
            }
            
            
            
            .task {
                await vm.getUsers()
            }
            .refreshable {
                await vm.getUsers()
            }
            .navigationTitle("Explore")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
