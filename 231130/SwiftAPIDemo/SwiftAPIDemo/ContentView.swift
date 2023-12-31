//
//  ContentView.swift
//  SwiftAPIDemo
//
//  Created by 황민채 on 11/30/23.
//


import SwiftUI


struct ContentView: View {
    @StateObject var network = NewsAPI.shared
    var body: some View {
        NavigationStack {
            List {
                ForEach(network.posts, id: \.self) { result in
                    HStack {
                        AsyncImage(url: URL(string: result.urlToImage ?? "")) { image in
                            image.image?.resizable()
                        }
                            .frame(width: 120, height: 80)
                        Text(result.title)
                            .bold()
                    }
                }
            }
        }
        .onAppear() {
            network.fetchData()
        }
    }
}



#Preview {
    ContentView()
}
