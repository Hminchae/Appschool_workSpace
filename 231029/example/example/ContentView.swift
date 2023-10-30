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
                Text("=================================")
                NavigationLink(destination:practice1()) {
                    Text("예제1")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                NavigationLink(destination:practice2()) {
                    Text("예제2")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Text("=================================")
                HStack{
                    NavigationLink(destination:stackpractice1()) {
                        Text("예제1")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination:stackpractice2()) {
                        Text("예제2")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination:stackpractice3()) {
                        Text("예제3")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination:stackpractice4()) {
                        Text("예제4")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination:stackpractice5()) {
                        Text("예제5")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
