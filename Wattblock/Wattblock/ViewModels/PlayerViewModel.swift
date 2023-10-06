//
//  PlayerViewModel.swift
//  Wattblock
//
//  Created by Pascal Mönch on 06.10.23.
//

import Foundation
import Firebase

class PlayerViewModel: ObservableObject {
    
    init() {
        fetchPlayers()
        sortPlayers()
    }
    
    
    
    // MARK: - Variables
    
    @Published var players: [Player] = []
    @Published var showSheet = false
    
    
    
    // MARK: - Functions
    
    func fetchPlayers() {
        players.removeAll()
        let database = Firestore.firestore()
        let reference = database.collection("Players")
        reference.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    
                    let player = Player(id: id, name: name)
                    self.players.append(player)
                }
            }
        }
    }
    
    func addPlayer(name: String) {
        let database = Firestore.firestore()
        let reference = database.collection("Players").document(name)
        reference.setData(["id": UUID().uuidString, "name": name]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    func deletePlayer() {
        
    }
    
    func sortPlayers() {
        players.sort { $0.name < $1.name }
    }
    
}
