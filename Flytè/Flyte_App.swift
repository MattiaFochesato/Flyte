//
//  Flyte_App.swift
//  Flytè
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

@main
struct Flyte_App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                DashboardView().tabItem {
                    Label("Dashboard", systemImage: "airplane")
                }
                
            }
            .accentColor(Color("AccentColor"))
        }
    }
}
