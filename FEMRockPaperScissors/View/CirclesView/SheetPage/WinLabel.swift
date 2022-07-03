//
//  WinLabel.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/3/22.
//

import SwiftUI

struct WinLabel: View {
    var body: some View {
        Text("YOU WIN")
               .foregroundColor(Color.white)
               .font(.custom("BarlowSemiCondensed-ExtraBold", size: 45))
               .padding(.top, 120)
    }
}

struct WinLabel_Previews: PreviewProvider {
    static var previews: some View {
        WinLabel()
    }
}
