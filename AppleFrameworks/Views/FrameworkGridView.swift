//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 13/08/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailView(
                    framework: framework,
                    isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitle(framework: framework)
                    }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
