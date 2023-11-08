//
//  GridEx01.swift
//  LectureCode
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct GridEx01: View {
    //private var gridItems = [GridItem(.fixed(100))]
        private var gridItems = [ GridItem(),
                                  GridItem(.flexible()),
                                  GridItem(), // 수직방향이면 행이 들어감
                                  GridItem(),
                                  GridItem()
                                ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 40) {
                //LazyVGrid(columns: gridItems, spacing: 5) {
                ForEach((1...25), id: \.self) { i in
                    CellContent(index: i, color: .blue)
                }
            }
        }.padding()
    }
}

#Preview {
    GridEx01()
}
