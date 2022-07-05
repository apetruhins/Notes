//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Alex on 05/07/2022.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - Properties
    
    let note: Note
    let count: Int
    let index: Int
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // Header
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HStack
            .foregroundColor(.accentColor)
            
            // Content
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // Footer
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(index + 1) / \(count)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
            } //: HStack
            .foregroundColor(.secondary)
            
        } //: VStack
        .padding(3)
    }
}

// MARK: - Preview

struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "Hello world")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
