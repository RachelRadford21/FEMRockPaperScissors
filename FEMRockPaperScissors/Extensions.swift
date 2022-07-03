//
//  Extensions.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import Foundation
import SwiftUI

///MARK: Comments
///     The first extension extends Color so we can create custom colors provided by FEM. The colors do not
///     translate perfectly, so I made adjustments to match as closely as possible.
///


extension Color {
    /*
     ### Primary

     - Scissors Gradient: hsl(39, 89%, 49%) to hsl(40, 84%, 53%)
     - Paper Gradient: hsl(230, 89%, 62%) to hsl(230, 89%, 65%)
     - Rock Gradient: hsl(349, 71%, 52%) to hsl(349, 70%, 56%)
     - Lizard Gradient: hsl(261, 73%, 60%) to hsl(261, 72%, 63%)
     - Cyan: hsl(189, 59%, 53%) to hsl(189, 58%, 57%)

     ### Neutral

     - Dark Text: hsl(229, 25%, 31%)
     - Score Text: hsl(229, 64%, 46%)
     - Header Outline: hsl(217, 16%, 45%)

     ### Background

     - Radial Gradient: hsl(214, 47%, 23%) to hsl(237, 49%, 15%)

    */
    static let darkText = Color(#colorLiteral(red: 0.2942662835, green: 0.3122437298, blue: 0.3793450594, alpha: 1))
    static let scoreText = Color(#colorLiteral(red: 0.2183994055, green: 0.2931560874, blue: 0.5341675878, alpha: 1))
    static let headerOutline = Color(#colorLiteral(red: 0.4522063732, green: 0.481321454, blue: 0.5238317251, alpha: 1))
    static let background1 = Color(#colorLiteral(red: 0.1586438119, green: 0.2221556902, blue: 0.293361038, alpha: 1))
    static let background2 = Color(#colorLiteral(red: 0.09959995002, green: 0.1089743599, blue: 0.201518774, alpha: 1))
    static let scissors1 = Color(#colorLiteral(red: 0.8356451956, green: 0.5710150996, blue: 0.1091854652, alpha: 1))
    static let scissors2 = Color(#colorLiteral(red: 0.9816379677, green: 0.795224143, blue: 0.4821065296, alpha: 1))
    static let paper1 = Color(#colorLiteral(red: 0.06730126141, green: 0.1598222081, blue: 0.623352466, alpha: 1))
    static let paper2 = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    static let rock1 = Color(#colorLiteral(red: 0.5860172194, green: 0.05902042976, blue: 0.134752452, alpha: 1))
    static let rock2 = Color(#colorLiteral(red: 0.7720556973, green: 0.2424701165, blue: 0.3937513427, alpha: 1))
}





