//
//  GridEx02.swift
//  LectureCode
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct GridEx02: View {
    @State private var sliderValue = 0.0
    //private var gridItems = [GridItem(.fixed(100))]
    @State private var gridItems = [GridItem()] //-100 ~ 1000
    var body: some View {
        VStack{
            Slider(value: $sliderValue, in: 1...5, step: 1)
                .onChange(of: sliderValue) { newValue in
                    gridItems = []
                    for _ in 0..<Int(newValue) {
                        gridItems.append(GridItem())//효율 ?
                    }
                }
            Spacer()
            LazyVGrid(columns: gridItems, spacing: 5) {
                //LazyVGrid(columns: gridItems, spacing: 5) {
                ForEach((1...5), id: \.self) { i in
                    CellContent(index: i, color: .blue)
                }
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    GridEx02()
}
