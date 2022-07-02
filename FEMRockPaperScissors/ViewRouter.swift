//
//  ViewRouter.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import Foundation

///MARK: Comments
///     The ViewRouter is typically used for navigating pages in multipage apps, but I use it in every app.
///     It allows us to add more pages easily, if necessary. This class uses the enum Pages in ContentView to
///     set the current page and publish it to the app so we can use button clicks or taps to change views
///
class ViewRouter: ObservableObject {
    @Published var currentPage: Pages = .page1
}
