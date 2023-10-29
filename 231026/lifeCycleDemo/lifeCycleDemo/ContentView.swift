//
//  ContentView.swift
//  lifeCycleDemo
//
//  Created by 황민채 on 10/26/23.
//

import SwiftUI

// ContentView
struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Image(systemName: "01.circle")
                    Text("First")
                }
            SecondTabView()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
        }
    }
}
