//
//  EventsHomeView.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import SwiftUI

struct EventsHomeView: View {
    @EnvironmentObject private var vm: EventsViewModel
    

    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                if vm.events.isEmpty {
                    ProgressView()
                        .padding()
                }
                else {
                    VStack(spacing: 10) {
                        ForEach(vm.events) {event in
                            
                            Text(event.d)
                        }
                    }
                }
            })
        }
        
    }
}

struct EventsHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EventsHomeView()
    }
}
