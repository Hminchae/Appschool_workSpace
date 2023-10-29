//
//  thirdViewA.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

struct sceneStorageName: View {
    @SceneStorage("mytext") private var editorText = ""
    
    var body: some View {
        VStack {
            Text("사용자 이름을 입력하세요")
                .padding(60)
                .font(.title2)
            TextEditor(text: $editorText)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .padding(30)
                .font(.title)
        }
    }
}

#Preview {
    sceneStorageName()
}
