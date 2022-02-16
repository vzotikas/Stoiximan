//
//  EventView.swift
//  Stoiximan
//
//  Created by vasse on 2/13/22.
//

import SwiftUI

struct EventView: View {
    let event: Event
    let currentTime = Int(Date().timeIntervalSince1970)
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        let timeRemaining = event.eventStartTime - self.currentTime
        let str = event.eventName
        let team = str.components(separatedBy: "-")

        VStack(alignment: .center, spacing: 2.0) {
            TimerView(timeRemaining: timeRemaining)
                .padding(.vertical, 6.0)
            Text(team[0])
                .foregroundColor(Color.white)
                .lineLimit(1)
                .frame(width: 100, height: 10)
                .font(.system(size: 15))
            Text("-")
                .padding(.vertical, 4.0)
                .foregroundColor(Color.theme.greenLight)
                .lineLimit(1)
                .frame(width: 100, height: 10)
            Text(team[1])
                .foregroundColor(Color.white)
                .lineLimit(1)
                .frame(width: 100, height: 10)
                .font(.system(size: 15))
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: dev.event)
            .preferredColorScheme(.dark)
    }
}
