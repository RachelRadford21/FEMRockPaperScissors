//
//  YouPickedView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/2/22.
//

import SwiftUI

struct YouPickedView: View {
   
    var body: some View {
        Text("YOU PICKED")
            .foregroundColor(Color.white)
            .font(.custom("barlow", size: 20))
            .padding(.top, 200)
            .padding(.leading, -170)
            .frame(alignment: .bottom)
    }
}

struct YouPickedView_Previews: PreviewProvider {
    static var previews: some View {
        YouPickedView()
        
    }
}
