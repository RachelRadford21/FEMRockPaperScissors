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
            .foregroundColor(Color.white)
            .font(.custom("barlow", size: 20))
            .padding(.top, 200)
            .padding(.leading, -160)
            .frame(alignment: .bottom)

    }
}

struct HousePickedView_Previews: PreviewProvider {
    static var previews: some View {
        HousePickedView()
    }
}
