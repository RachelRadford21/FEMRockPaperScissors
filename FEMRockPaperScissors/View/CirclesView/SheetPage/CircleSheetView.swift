//
//  CircleSheetView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 7/2/22.
//

import SwiftUI

struct CircleSheetView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        Spacer()
        CompWinsView()
        
        YouWinView()
        
        TieView()
      
        SheetButtonView()
        Spacer()
    }
}


struct CircleSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CircleSheetView()
            .environmentObject(ViewModel())
        
    }
}
