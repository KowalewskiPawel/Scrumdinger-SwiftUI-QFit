//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Pawel on 23/02/2024.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isLoggedIn: Bool
    
    init(isLoggedIn: Bool) {
        self.isLoggedIn = isLoggedIn
    }
}

@main
struct ScrumdingerApp: App {
    @ObservedObject var appState = AppState(isLoggedIn: false)
    
    var body: some Scene {
        WindowGroup {
            if appState.isLoggedIn {
                    MainDashboard()

                    .environmentObject(appState)
            } else {
                    MainIntroView()
                    .environmentObject(appState)
            }
        }
    }
}
