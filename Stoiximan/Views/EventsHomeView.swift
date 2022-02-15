//
//  EventsHomeView.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import SwiftUI

struct EventsHomeView: View {
    @EnvironmentObject private var vm: EventsViewModel

    enum FilterType {
        case none, stared, unstared
    }

    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false, content: {
                if vm.sports.isEmpty {
                    ProgressView()
                        .padding()
                }
                else {
                    VStack {
                        ForEach(vm.sports) { sport in
                            EventRowView(sport: sport)
                        }
                    }
                    .padding(10)
                }
            })
        }
    }
}

struct EventsHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EventsHomeView()
                .navigationBarHidden(true)
                .preferredColorScheme(.dark)
        }
        .environmentObject(dev.eventsVM)
    }
}
