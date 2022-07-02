//
//  RulesButtonView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI

struct RulesButtonView: View {
   // @Binding var isPresented: Bool
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        ZStack {
            Button {
                vm.isPresented.toggle()
            } label: {
                Text("R U L E S")
                    .font(.custom("barlow", size: 20))
                    .foregroundColor(Color.white)
                    .frame(width: 170, height: 55, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.7), lineWidth: 2)
                    )

            }.sheet(isPresented: $vm.isPresented) {
                RulesSheetView()
            }
        }
    }
}

struct RulesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RulesButtonView()
            .environmentObject(ViewModel())
    }
}
