//
//  EventsModel.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

// import Foundation
//
// struct Sport: Identifiable, Codable  {
//    var id: UUID { UUID() }
//    let sportId: String
//    let sportName: String
//    let event: [Event]
//
//    enum CodingKeys: String, CodingKey {
//        case sportId = "i"
//        case sportName = "d"
//        case event = "e"
//    }
// }
//
// struct Event:Identifiable, Codable  {
//    var id: UUID { UUID() }
//    let eventId: String
//    let sportId: String
//    let eventName: String
//    let eventStartTime: Int
//
//    enum CodingKeys: String, CodingKey {
//        case eventId = "i"
//        case sportId = "si"
//        case eventName = "d"
//        case eventStartTime = "tt"
//    }
// }

import Foundation

// MARK: - WelcomeElement

struct Response: Identifiable, Codable {
    var id: UUID { UUID() }

    let i: String
    let d: String
    var e: [E]
}

// MARK: - E

struct E: Identifiable, Codable {
    var id: UUID { UUID() }
    let d, i, si, sh: String
    let tt: Int
}
