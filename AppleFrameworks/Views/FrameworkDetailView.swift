//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 19/08/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            closeButtonView
                .padding()
            Spacer()
            FrameworkTitle(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: Constants.title)
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
    
    private var closeButtonView: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: Constants.imageName)
                    .foregroundStyle(Constants.foregroundColor)
                    .imageScale(.large)
                    .frame(width: Constants.buttonWidth, height: Constants.buttonHeight)
            }
        }
    }
    
   private struct Constants {
       static let title: String = "Learn More"
       static let imageName: String = "xmark"
       static let buttonWidth: CGFloat = 44
       static let buttonHeight: CGFloat = 44
       static let foregroundColor: Color = Color(.label)
    }
    
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
