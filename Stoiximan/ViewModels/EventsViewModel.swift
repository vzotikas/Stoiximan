//
//  EventsViewModel.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation

class EventsViewModel: ObservableObject {
    @Published var sports: [Sport] = []
    private let sportData = EventDataService()
    
    init() { Task {
        await addSubscribers()
    }}
    
    func addSubscribers() async {
        do {
            let loadedSpots = try await sportData.loadData()
            
            DispatchQueue.main.async {
                self.sports = loadedSpots
            }
        }
        catch {
            print(error)
        }
    }
}
