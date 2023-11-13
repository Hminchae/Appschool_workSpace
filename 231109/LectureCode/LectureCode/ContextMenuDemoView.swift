//
//  ContextMenuDemoView.swift
//  LectureCode
//
//  Created by 황민채 on 11/9/23.
//

/*
 MARK: ContextMenu
 
 사용자가 뷰를 롱 프레스 했을 때 나타나는 메뉴
 일반적으로 Text, Image와 함께 선택했을 때 동작을 수행하도록 Button 뷰를 포함
 */

import SwiftUI
    
struct ContextMenuDemoView: View {
    @State private var foregroundColor: Color = .black
    @State private var backgroundColor: Color = .white

    var body: some View {
         Image(systemName: "plus.circle.fill")
            .frame(width: 400, height: 400)
            .foregroundStyle(foregroundColor)
            .background(backgroundColor)
            .contextMenu {
                Button {
                    self.foregroundColor = .black
                    self.backgroundColor = .white
                } label: {
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                Button {
                    self.foregroundColor = .white
                    self.backgroundColor = .black
                } label: {
                    Text("Inverted Colors")
                    Image(systemName: "paintbrush.fill")
                }
            }
    }
}

#Preview {
    ContextMenuDemoView()
}
