//
//  LoseLabel.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/3/22.
//

import SwiftUI

struct LoseLabel: View {
    var body: some View {
        Text("YOU LOSE")
            .foregroundColor(Color.white)
            .font(.custom("BarlowSemiCondensed-ExtraBold", size: 45))
            .padding(.top, 120)
    }
}

struct LoseLabel_Previews: PreviewProvider {
    static var previews: some View {
        LoseLabel()
    }
}
