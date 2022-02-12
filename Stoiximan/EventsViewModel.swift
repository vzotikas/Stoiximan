//
//  EventsViewModel.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation

class EventsViewModel: ObservableObject {
    @Published var events: [Response] = []
    
    private let eventData = EventDataService()
    
    init() { Task {
        await addSubscribers()
    }}
    
    func addSubscribers() async {
        do {
            let loadedEvents = try await eventData.loadData()
            
            DispatchQueue.main.async {
                self.events = loadedEvents
            }
        }
        catch {
            print(error)
        }
    }
}
