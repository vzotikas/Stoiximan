//
//  TimerView.swift
//  Stoiximan
//
//  Created by vasse on 2/13/22.
//

import SwiftUI

struct TimerView: View {
    @State var timeRemaining: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text("\(timeString(time: timeRemaining))")
            .foregroundColor(Color.theme.accent)
            .font(.system(size: 14))
            .lineLimit(1)
            .frame(width: 100, height: 20)
            .background(
                RoundedRectangle(cornerRadius: 10)

                    .foregroundColor(Color.theme.blueLight)
            )

            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                }
                else {
                    self.timeRemaining = 0
                }
            }
    }

    func timeString(time: Int) -> String {
        let hours = Int(time) / 3600 % 12
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .preferredColorScheme(.dark)
    }
}
