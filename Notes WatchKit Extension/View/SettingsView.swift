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
    
    @State private var value: Float = 1.0

    // MARK: - Functions
    
    func update() {
        lineCount = Int(value)
    }
    
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
                self.value
            }, set: { newValue in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
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
