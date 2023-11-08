//
//  GridDemoView.swift
//  LectureCode
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct GridDemoView: View {
    private var colors: [Color] = [.red, .orange, .yellow, .green, .cyan, .blue, .purple, .pink]
    //flexible 모드는 디폴트로 생략가능함
//    private var gridItems = [ GridItem(),
//                              GridItem(.flexible()),
//                              GridItem() // 수직방향이면 행이 들어감
//                            ]
    
    /*
     MARK: 적응형 설정
     뷰가 차지하는 공간에 맞출 수. ㅣㅆ는 한 많은 행이나 열이 자동으로 표시되도록 그리드 뷰를 구성
     열의 너비가 50pt 보다 작을 수 없다는 제한과 함께 그리드에 가능한 많은 열이 표시
     private var gridItems = [GridItem(.adaptive(minimum: 80))]
     */
    /*
     MARK: 고정형 설정
     너비가 100pt 인 단일 열을 가진 그리드가 표시
     private var gridItems = [GridItem(.fixed(100))]
     */
    /*
     MARK: 고정형과 적응형 조합
     아래 적용 예시
     */
    private var gridItems = [ GridItem(.fixed(100)),
                              GridItem(.adaptive(minimum: 80)),
                              GridItem() // 수직방향이면 행이 들어감
                            ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, spacing: 5) {
                //LazyVGrid(columns: gridItems, spacing: 5) {
                ForEach((1...5), id: \.self) { i in
                    CellContent(index: i, color: colors[i % 8])
                }
            }
        }.padding()
    }
}


struct CellContent: View {
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 60, minHeight: 50, maxHeight: .infinity)
            .background(color)
            .cornerRadius(8)
            .font(.largeTitle)
    }
}
#Preview {
    GridDemoView()
}
