//
//  Color.swift
//  Stoiximan
//
//  Created by vasse on 2/12/22.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let almostBlack = Color("AlmostBlackColor")
    let blueDark = Color("BlueDarkColor")
    let blueMedium = Color("BlueMediumColor")
    let blueLight = Color("BlueLightColor")
    let blue = Color("BlueColor")
    let gray = Color("GrayColor")
    let grayDark = Color("GrayDarkColor")
    let grayLight = Color("GrayLightColor")
    let greenLight = Color("GreenLightColor")
    let greenDark = Color("GreenDarkColor")
    let yellow = Color("YellorColor")
    let secondaryText = Color("SecondaryTextColor")
}
