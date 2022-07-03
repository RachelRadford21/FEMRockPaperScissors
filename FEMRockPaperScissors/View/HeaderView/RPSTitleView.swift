//
//  RPSTitleView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/1/22.
//

import SwiftUI

struct RPSTitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: -11) {
                Text("ROCK")
                    .font(.custom("BarlowSemiCondensed-Bold", size: 25))
                    .foregroundColor(Color.white.opacity(0.9))
                    .frame(alignment: .leading)
                    
                Text("PAPER")
                    .font(.custom("BarlowSemiCondensed-Bold", size: 25))
                    .foregroundColor(Color.white.opacity(0.9))
                    .frame(alignment: .leading)
                Text("SCISSORS")
                    .font(.custom("BarlowSemiCondensed-Bold", size: 25))
                    .foregroundColor(Color.white.opacity(0.9))
                    .frame(alignment: .leading)
            }
        }
    }
}

struct RPSTitleView_Previews: PreviewProvider {
    static var previews: some View {
        RPSTitleView()
    }
}
