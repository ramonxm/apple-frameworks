//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 19/08/24.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    @Published var isShowingDetailView = false
}
