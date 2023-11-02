//
//  ContentView.swift
//  ExList
//
//  Created by 황민채 on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var numbers = [Int]()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
