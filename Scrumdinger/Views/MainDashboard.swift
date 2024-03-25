//
//  MainDashboard.swift
//  Scrumdinger
//
//  Created by Pawel on 24/03/2024.
//

import SwiftUI

struct MainDashboard: View {
    @State var selectedTab = 1
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                MenuHome().tabItem { Label("Home", systemImage: "house")}.tag(1)
                MenuWorkout().tabItem { Label("Workout", systemImage: "shoe") }.tag(2)
            }.tint(.orange)
        }
    }
}

#Preview {
    MainDashboard()
}
