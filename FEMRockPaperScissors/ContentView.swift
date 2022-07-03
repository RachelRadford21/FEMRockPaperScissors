//
//  ContentView.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI

///MARK: Comments
///     The enum Pages allows us to add more pages/views easily.
///     In ContentView we use @StateObject to use the ViewRouter class var currentPage
///     to keep track of what page we are on / what the "home page" is.
///     The @StateObject var is also added to the FEMRockPaperScissorsApp: App View
///     along with .environmentObject(ViewRouter()). The app would break without this.
///     We use the switch statement to switch on pages/views.
///     This also functions as the "entry point" to the app. Viewing previews in other views
///     MAY cause the app to look distorted.
///
enum Pages {
    case page1
}
struct ContentView: View {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var vm = ViewModel()
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            MainView()
        
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewRouter())
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
