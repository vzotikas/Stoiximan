//
//  EventRowView.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation
import SwiftUI

struct EventRowView: View {
    @State private var showEvents: Bool = true
    @State var sport: Sport
    @State var isFavourite: Bool = false

    var body: some View {
        VStack {
            HStack {
                Image("\(sport.sportName)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .center)
                Text(sport.sportName)
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(Color.theme.yellow)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                Spacer()
                CircleButtonView(iconName: "chevron.right")
                    .rotationEffect(Angle(degrees: showEvents ? 90 : 270))
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showEvents.toggle()
                        }
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.theme.blueDark)
            )
            ScrollViewReader { _ in
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(spacing: 10) {
                        ForEach(sport.events) { event in
                            EventView(event: event, isFavourite: isFavourite)
                                .onTapGesture(perform: { sport.events.remove(at: sport.events.firstIndex(where: { $0 == event }) ?? 0); sport.events.insert(event, at: 0) })
                        }
                    }
                    .padding(.leading)
                    .frame(height: showEvents ? 100 : 0)
                })
            }
        }
        .padding(6)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.theme.blueLight)
        )
    }
}

struct EventRowView_Previews: PreviewProvider {
    static var previews: some View {
        EventRowView(sport: dev.sport)
            .preferredColorScheme(.dark)
    }
}
