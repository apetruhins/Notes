//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Alex on 07/07/2022.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    
    @AppStorage("lineCount") var lineCount: Int = 1

    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 8) {
            
            // Header
            HeaderView(title: "Settings")
            
            // Actual line count
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // Slider
            Slider(value: Binding(get: {
                Double(self.lineCount + 1)
            }, set: { newValue in
                self.lineCount = newValue < 2 ? 1 : Int(newValue) - 1
            }), in: 1...5, step: 1)
                .accentColor(.accentColor)
            
        } //: VStack
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
