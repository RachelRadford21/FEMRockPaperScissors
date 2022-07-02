//
//  CircleView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI



struct CircleView: View {
    var color1: Color
    var color2: Color
    var imageName: String
    @EnvironmentObject var vm: ViewModel

var body: some View {
   
            Circle()
                .strokeBorder(RadialGradient(gradient: Gradient(colors: [color2, color1]), center: .topLeading, startRadius: .zero, endRadius: 180), lineWidth: 17)
                .shadow(color: color1, radius: 2, x: 0, y: 5)
                .frame(width: 150, height: 150, alignment: .leading)
                .overlay(
                    Button{
                        vm.userChoice = imageName
                        vm.makeChoice()
                        vm.choicesMade.toggle()
                        vm.getScore()
                        vm.isPresented2.toggle()
                    } label: {
                        Image("\(imageName)")
                       
                    }
                    .animation(.spring(), value: 9)
                    
                )
                .background(Color.white)
                .cornerRadius(80)
    
                .overlay(
                    Circle()
                        .strokeBorder(RadialGradient(gradient: Gradient(colors: [color2, color2]), center: .top, startRadius: .zero, endRadius: 180), lineWidth: 0)
                        .shadow(color: color1, radius: 4, x: 3, y: 3)
                )
                .shadow(color: color2, radius: 0, x: 1, y: 1)
                .shadow(color: color1, radius: 0, x: 2, y: 3)
                .opacity(vm.choicesMade && vm.userChoice != imageName && vm.computerChoice != imageName ? 0.0 : 1.0)
    }
}
    
    

 
struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "")
            .environmentObject(ViewModel())
    }
}
