//
//  ContentView.swift
//  navigationUI
//
//  Created by Franco Rodrigues on 4/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { EmptyView()}
                
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
