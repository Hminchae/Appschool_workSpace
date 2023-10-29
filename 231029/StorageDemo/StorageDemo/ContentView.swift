//
//  ContentView.swift
//  StorageDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Image(systemName:  "circle.fill")
                    Text("SceneStorage")
                }
            AppStorageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorage")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
