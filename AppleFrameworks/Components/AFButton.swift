//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Ramon Xavier on 19/08/24.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
