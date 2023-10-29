//
//  SecondTabView.swift
//  LifecycleDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text, perform: { value in
                print("onChange triggerd")
            })
    }
}

#Preview {
    SecondTabView()
}
