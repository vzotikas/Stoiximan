//
//  EventsModel.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation

struct Sport: Identifiable, Codable {
    var id: UUID { UUID() }
    let sportId: String
    let sportName: String
    var events: [Event]

    enum CodingKeys: String, CodingKey {
        case sportId = "i"
        case sportName = "d"
        case events = "e"
    }
}

struct Event: Identifiable, Codable, Equatable, Hashable {
    let id = UUID()
    var isFavourite: Bool = false
    let eventId: String
    let sportId: String
    let eventName: String
    let eventStartTime: Int

    enum CodingKeys: String, CodingKey {
        case eventId = "i"
        case sportId = "si"
        case eventName = "d"
        case eventStartTime = "tt"
    }
}
