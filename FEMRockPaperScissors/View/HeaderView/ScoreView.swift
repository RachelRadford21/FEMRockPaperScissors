//
//  ScoreView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI

struct ScoreView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ZStack{
        
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.headerOutline.opacity(0.5), lineWidth: 4)
                    .frame(width: 365, height: 120, alignment: .top)
                    .overlay(
                        RPSTitleView()
                            .padding(.trailing, 190)
                    )
                    .overlay(
                        ScoreBoxView()
                            .padding(.leading, 220)
                    )
                }
            }
        }
    }

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
            .environmentObject(ViewModel())
    }
}
