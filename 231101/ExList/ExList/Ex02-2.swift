//
//  Ex02-2.swift
//  ExList
//
//  Created by 황민채 on 11/1/23.
//
//heaㅇㄱ

import SwiftUI

struct Ex02_2: View {
    var body: some View {
        Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
        List() {
            let items = (1...3)
            ForEach(1..<6) { section in
                Section {
                    ForEach(items, id: \.self) { row in
                        Text("Item \(row)")
                            .foregroundStyle(.blue)
                    }
                }header: {
                    Text("Section \(section)")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                } footer: {
                    HStack {
                        Spacer()
                        Text("\(items.count) 건")
                    }
                }
            }
        }
        .background(Color.gray)
        .listStyle(PlainListStyle())
    }
}

#Preview {
    Ex02_2()
}
