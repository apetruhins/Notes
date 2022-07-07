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
    
    @State private var isCreaditsPresented: Bool = false
    
    @State private var isSettingsPresented: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // Header
            HeaderView()
            
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
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented) {
                        SettingsView()
                    }
                
                Spacer()
                
                Text("\(index + 1) / \(count)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreaditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreaditsPresented) {
                        CreditsView()
                    }
                
            } //: HStack
            .foregroundColor(.secondary)
            
        } //: VStack
        .padding(3)
    }
}

// MARK: - Preview

struct DetailView_Previews: PreviewProvider {
    
    static var sampleData: Note = Note(id: UUID(), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
