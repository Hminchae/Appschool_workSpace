//
//  Ex02.swift
//  ExNavigation
//
//  Created by 황민채 on 11/1/23.
//

import SwiftUI

struct Ex02: View {
    @State var title = "First View"
    var body: some View {
        NavigationStack {
            VStack {
                Text(title)
                NavigationLink(destination: secondView(title: $title), label:
                                {Text("go...")})
                }
            }
    }
}

struct secondView: View {
    @Binding var title: String
    var body: some View {
        VStack {
            Text(title)
        }
        .onAppear {
            title = "Second View"
        }
        .onDisappear {
            title = "First view"
        }
        .navigationTitle(title)
    }
}

#Preview {
    Ex02()
}
