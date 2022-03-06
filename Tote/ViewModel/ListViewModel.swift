//
//  ListViewModel.swift
//  Tote
//
//  Created by David Vicente on 22/1/22.
//

import Foundation

protocol ListViewModel: ObservableObject {
    func getUsers() async
}

// MAIN ACTOR indica que las actualizaciones se realizaran en hilo principal
@MainActor
// FINAL CLASS para que nadie pueda subclasificar esta implementación
final class ListViewModelImpl: ListViewModel {
    // PRIVATE para acceder desde fuera pero que solo se pueda actualizar en esta clase
    // Se inicializa vacía porque inicilmente no se mostrará nada al usuario.
    @Published private(set) var users: [User] = []
    // LET para que nadie pueda cambiar el valor de esa propiedad, solo leer.
    private let service: CloudService
    
    // Es una inyección de dependencia
    // Está inyectando el objeto en esta clase
    // Es para que otros modelviews puedan interactuar con el servicio
    init(service: CloudService) {
        self.service = service
    }
    
    func getUsers() async {
        do {
            self.users = try await service.fetchUsers()
        } catch {
            print(error)
        }
    }
    
    
}
