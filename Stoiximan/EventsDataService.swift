//
//  EventsDataService.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation

enum FetchError: Error {
    case badURL
    case badResponse
    case noData
}

extension FetchError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .badURL:
            return "The URL is invalid."
        case .badResponse:
            return "The server gave a bad respomse."
        case .noData:
            return "No data returned."
        }
    }
}

class EventDataService: ObservableObject {
    @Published var event: [Response] = []
    
    func loadData() async throws -> [Response] {
        
        guard let url = URL(string: "https://618d3aa7fe09aa001744060a.mockapi.io/api/sports")
        else {throw FetchError.badURL}
        
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else { throw FetchError.badResponse}
        print(data)

        guard let eventData = try? JSONDecoder().decode([Response].self, from: data)
        else {throw FetchError.noData}

        print(eventData)
        
        return eventData
    }
}
