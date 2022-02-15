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
            NavigationView {
                EventsHomeView()
                    .navigationBarTitle(
                        Text(""),
                        displayMode: .inline)
                    .navigationBarItems(leading:
                        HStack {
                            Button(action: {}) {
                                Image(systemName: "person.fill")
                            }.foregroundColor(Color.theme.accent)
                            Image("icon")
                                .resizable()

                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 40, alignment: .center)
                                .padding(UIScreen.main.bounds.size.width / 4 + 30)
                        },
                        trailing:

                        HStack {
                            Button(action: {}) {
                                Image(systemName: "gear")
                            }.foregroundColor(Color.accentColor)
                        })
            }

            .environmentObject(vm)
        }
    }
}
