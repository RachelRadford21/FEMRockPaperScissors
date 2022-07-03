//
//  TieLabelView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/3/22.
//

import SwiftUI

struct TieLabelView: View {
    var body: some View {
        Text("IT'S A TIE")
            .foregroundColor(Color.white)
            .font(.custom("BarlowSemiCondensed-ExtraBold", size: 45))
            .padding(.top, 120)
    }
}

struct TieLabelView_Previews: PreviewProvider {
    static var previews: some View {
        TieLabelView()
    }
}
