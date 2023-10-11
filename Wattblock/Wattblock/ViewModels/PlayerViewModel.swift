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
    }
    
    
    
    // MARK: - Variables
    
    @Published var players: [Player] = []
    @Published var showSheet = false
    @Published var selectedPlayers: [Player] = []
    
    
    
    // MARK: - Functions
    
    func fetchPlayers() {
        players.removeAll()
        let database = Firestore.firestore()
        let reference = database.collection("players").order(by: "name")
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
        let id = UUID().uuidString
        let reference = database.collection("players").document(id)
        reference.setData(["id": id, "name": name]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        fetchPlayers()
    }
    
    func deletePlayer(with id: String) {
        let database = Firestore.firestore()
        database.collection("players").document(id).delete()
        fetchPlayers()
    }
    
    func togglePlayerSelection(_ player: Player, _ playerCount: Int) {
        if selectedPlayers.contains(player) {
            if let index = selectedPlayers.lastIndex(of: player) {
                selectedPlayers.remove(at: index)
            }
        } else {
            if selectedPlayers.count < (playerCount) {
                selectedPlayers.append(player)
            }
        }
    }
    
    func clearSelection() {
        selectedPlayers.removeAll()
    }
    
}
