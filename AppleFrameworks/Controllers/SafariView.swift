//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 20/08/24.
//
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    typealias ContextSafariView = UIViewControllerRepresentableContext<SafariView>
    
    func makeUIViewController(context: ContextSafariView) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: ContextSafariView) {
    }
}
