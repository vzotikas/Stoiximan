//
//  StoiximanApp.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import SwiftUI

@main
struct StoiximanApp: App {
    
    @StateObject private var vm = EventsViewModel()
    
    var body: some Scene {
        WindowGroup {
            EventsHomeView()
                .environmentObject(vm)
        }
    }
}
