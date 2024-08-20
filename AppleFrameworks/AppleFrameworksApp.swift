//
//  AppleFrameworksApp.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 13/08/24.
//

import SwiftUI

@main
struct AppleFrameworksApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FrameworkGridView()
                    .navigationTitle("🍎 Frameworks")
            }
        }
    }
}
