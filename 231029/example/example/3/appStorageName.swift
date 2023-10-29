//
//  thirdViewB.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

struct appStorageName: View {
    @AppStorage("mytext") var editorText: String = "사용자 이름 예시"
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    appStorageName()
}
