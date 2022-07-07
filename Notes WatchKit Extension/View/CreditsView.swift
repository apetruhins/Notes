//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Alex on 07/07/2022.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: - Properties
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 3) {
            // Profile image
            Image("developer-no\(randomNumber)")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // Header
            HeaderView(title: "Credits")
            
            // Content
            Text("Alex")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        } //: VStack
    }
}

// MARK: - Preview

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
