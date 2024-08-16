//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 13/08/24.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
        }
    }
}

#Preview {
    FrameworkGridView()
}
