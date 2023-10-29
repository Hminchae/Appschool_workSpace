//
//  SceneStorageView.swift
//  StorageDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("mytext") private var editorText = ""
    
    var body: some View {
        TextEditor(text: $editorText) //앱 내에서 여러줄의 텍스트를 표시하고 편집할 수 있도록 설계된 뷰, 표시된 텍스트가 볼 수 있는 영역을 넘으면스크롤을 포함함
            .padding(30)
            .font(.largeTitle)
    }
}

#Preview {
    SceneStorageView()
}
