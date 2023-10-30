//
//  ContentView.swift
//  StorageDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI


struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            SceneStorageView()
                .tabItem {
                    Image(systemName:  "circle.fill")
                    Text("SceneStorage")
                }
                .tag(0)
            AppStorageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorage")
                }
                .tag(1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
