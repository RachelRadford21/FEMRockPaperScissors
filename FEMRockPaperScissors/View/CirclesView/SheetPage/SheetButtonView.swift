//
//  SheetButtonView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/2/22.
//

import SwiftUI

struct SheetButtonView: View {
    @EnvironmentObject var vm: ViewModel
   
    var body: some View {

        Button {
            vm.isPresented2 = false
        } label: {
            VStack{
            Text("PLAY AGAIN")
                .frame(width: 200, height: 55, alignment: .center)
                .font(.custom("BarlowSemiCondensed-Bold", size: 20))
                .foregroundColor(Color.background1)
                .background(Color.white)
                .cornerRadius(10)
            }
             
        }
    }
    
}


struct SheetButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SheetButtonView()
            .environmentObject(ViewModel())
            
    }
}
