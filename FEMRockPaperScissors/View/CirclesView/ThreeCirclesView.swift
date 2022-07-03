//
//  ThreeCirclesView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/2/22.
//

import SwiftUI

struct ThreeCirclesView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        
        VStack {
            HStack(spacing: 15) {
                Spacer()
                CircleView(color1: Color.paper1, color2: Color.paper2, imageName: "icon-paper")
                Spacer()
                CircleView(color1: Color.scissors1, color2: Color.scissors2, imageName: "icon-scissors")
                Spacer()
            }
            VStack {
                CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "icon-rock")
            }
        }.sheet(isPresented: $vm.isPresented2){
            CircleSheetView()
        }
    }
}

struct ThreeCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeCirclesView()
            .environmentObject(ViewModel())
         
    }
}
