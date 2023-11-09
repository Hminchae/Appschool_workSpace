//
//  TabViewDemoView.swift
//  LectureCode
//
//  Created by 황민채 on 11/9/23.
//


/*
 MARK: TabView
 
 사용자가 이동할 화면들을 나타내는 하위 뷰들로 구성
 
 뷰들 사이를 이동하는데 사용될 탭 아이템을 가진 탭바를 레이아웃 하단에 구성
 */
import SwiftUI

struct TabViewDemoView: View {
    @State private var selection = 1
    
    var body: some View {
        Text("\(selection)") //나타나라 변경 값
        TabView(selection: $selection) {
            Text("First Content view")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Screen one")
                }.tag(1)
            Text("뀨")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Screen one")
                }.tag(2)
            Text("까악")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Screen one")
                }.tag(3)
        }
        .font(.largeTitle)
        // MARK: 뷰 페이징
        // 탭 아이템 추가 시 시각적 표시 제공을 위해 tabViewStyle() 수정자를 제거
        // tabItem() 수정자를 사용하여 각 콘텐츠 뷰에 탭 아이템을 적용
        //.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewDemoView()
}
