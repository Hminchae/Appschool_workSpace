//
//  ContentView.swift
//  ExNavigation
//
//  Created by 황민채 on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                CustomCell(cellNum: "실습01")
            }
        }
    }
}
struct CustomCell: View {
    var cellNum: String
    var body: some View {
        HStack {
            NavigationLink(destination: Ex01()) {
                Text("\(cellNum)")
            }
        }
    }
}
#Preview {
    ContentView()
}
