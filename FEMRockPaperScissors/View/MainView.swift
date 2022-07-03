//
//  MainView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI



struct MainView: View {
    @StateObject var vm = ViewModel()
    @StateObject var viewRouter = ViewRouter()
     var imageName = ""
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.background1, Color.background2]), center: .center, startRadius: .zero, endRadius: 360).ignoresSafeArea()
            GeometryReader { geo in
                if geo.size.height > geo.size.width {
                    VStack(spacing: 25) {
                   
                        ScoreView()
                             .padding(.horizontal)
                        Spacer()
                        ThreeCirclesView()
                        Spacer()
                                
                        RulesButtonView()
                        Spacer()
                  
                    }
                    .padding(.trailing, 10)

                }else {
                    VStack(alignment: .leading) {
                        ScoreView()
                            
                        RulesButtonView()
                    }.padding(.leading, 20)
                  
                    VStack(alignment: .trailing){
                        HStack(spacing: 30){
                            CircleView(color1: Color.paper1, color2: Color.paper2, imageName: "icon-paper")
                           
                        }
                        .padding(.leading, 440)
                        .padding(.trailing, 10)
                        .padding(.top, 30)
                        CircleView(color1: Color.rock1, color2: Color.rock2, imageName: "icon-rock")
                            .padding(.trailing, 90)
                          
                    }
                }
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewInterfaceOrientation(.portrait)
            .environmentObject(ViewModel())
            .environmentObject(ViewRouter())
    }
}
