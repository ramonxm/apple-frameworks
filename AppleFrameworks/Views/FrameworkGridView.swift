//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 13/08/24.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(MockData.frameworks) { framework in
                    FrameworkTitle(framework: framework)
                        .onTapGesture {
                            
                        }
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
