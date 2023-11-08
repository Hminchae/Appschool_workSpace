//
//  NavSplitDemoView.swift
//  LectureCode
//
//  Created by 황민채 on 11/8/23.
//

/**
 # NavigationSplitView

 와이드 디스플레이에서 멀티컬럼 기반의 내비게이션을 제공
 '''
 NavigationSplitView(columnVisibility: $columnVisibility) {
             // 사이드바 목록
         } content: {
             // 콘텐트 목록
         } detail: {
             // 디테일 뷰
         }
 '''

 */


import SwiftUI

struct NavSplitDemoView: View {

    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor: String?
    @State private var columnVisibility = NavigationSplitViewVisibility.detailOnly

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(colors, id: \.self, selection: $selectedColor) { color in
                // tag() 수정자는 List, Picker 및 TabView 와 같은 뷰에서 선택 가능한 항목들을 구별하기 위해 사용
                Text(color).tag(color)
            }
        } detail: {
            Text("hello \(selectedColor ?? "No color selected" )")
        }
        .navigationViewStyle(.automatic)
    }
}

#Preview {
    NavSplitDemoView()
}

