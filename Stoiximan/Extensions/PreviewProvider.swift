//
//  PreviewProvider.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() {}

    let eventsVM = EventsViewModel()

    let sport = Sport(sportId: "FOOT", sportName: "SOCCER", events: [Event(eventId: "23314762", sportId: "FOOT", eventName: "Wigan U23 - Sunderland AFC U23", eventStartTime: 1643267400)])
    let event = Event(eventId: "23314762", sportId: "FOOT", eventName: "Wigan U23 - Sunderland AFC U23", eventStartTime: 1643267400)
}
