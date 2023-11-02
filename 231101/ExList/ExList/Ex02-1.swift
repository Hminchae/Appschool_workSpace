//
//  Ex02-1.swift
//  ExList
//
//  Created by 황민채 on 11/1/23.
//

import SwiftUI

struct Ex02_1: View {
    var body: some View {
        Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
        List(1...5, id: \.self) { item in
            Section(header: Text("Section\(item)").foregroundStyle(.black)){
                Text("Row1")
                    .foregroundStyle(.blue)
                Text("Row2")
                    .foregroundStyle(.blue)
                Text("Row3")
                    .foregroundStyle(.blue)
            }
        }
    }
}

#Preview {
    Ex02_1()
}
