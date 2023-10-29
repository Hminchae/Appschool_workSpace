//
//  ContentView.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: firstView()) {
                    Text("예제1")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                NavigationLink(destination: secondView()) {
                    Text("예제2")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                NavigationLink(destination:thirdView()) {
                    Text("예제3")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                NavigationLink(destination:fourthView()) {
                    Text("예제4")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
