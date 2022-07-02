//
//  FEMRockPaperScissorsApp.swift
//  FEMRockPaperScissors
//
//  Created by Rachel Radford on 6/25/22.
//

import SwiftUI

@main
struct FEMRockPaperScissorsApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewRouter())
                .environmentObject(ViewModel())
        }
    }
}
