//
//  EventView.swift
//  Stoiximan
//
//  Created by vasse on 2/13/22.
//

import SwiftUI

struct EventView: View {
    @State var event: Event
    @State var isFavourite: Bool
    let currentTime = Int(Date().timeIntervalSince1970)

    func toggleStar() {
        isFavourite = event.isFavourite
    }

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        let timeRemaining = event.eventStartTime - self.currentTime

        VStack(alignment: .center, spacing: 2.0) {
            TimerView(timeRemaining: timeRemaining)
                .padding(.vertical, 6.0)

            let str = event.eventName
            let team = str.components(separatedBy: "-")
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

            Image(systemName: self.isFavourite ? "star.fill" : "star")
                .onTapGesture(perform: { self.isFavourite.toggle() })
//                .onTapGesture(perform: toggleStar)
                .padding(.vertical, 6.0)
                .font(.system(size: 15))
                .foregroundColor(Color.theme.yellow)

        }.frame(width: 150, height: 90)
            .padding(.vertical, 8.0)

            .background(
                RoundedRectangle(cornerRadius: 20)

                    .foregroundColor(Color.theme.blueMedium)
            )
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(event: dev.event, isFavourite: false)
            .preferredColorScheme(.dark)
    }
}
