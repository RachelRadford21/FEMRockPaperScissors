//
//  HousePickedView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/2/22.
//

import SwiftUI

struct HousePickedView: View {
    var body: some View {
        Text("HOUSE PICKED")
            .foregroundColor(Color.background1)
            .font(.custom("barlow", size: 20))
            .padding(.top, 200)
            .padding(.leading, -170)
            .frame(alignment: .bottom)

    }
}

struct HousePickedView_Previews: PreviewProvider {
    static var previews: some View {
        HousePickedView()
    }
}
