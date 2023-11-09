//
//  GridRowDemoView.swift
//  LectureCode
//
//  Created by 황민채 on 11/9/23.
//

/*
 MARK: GridRow(p. 377)
 
 지연 lazy 그리드 뷰가 할 수 없는 열 확장, 빈 셀, 다양한 간격 등의 기능을 제공
 */
import SwiftUI

struct GridRowDemoView: View {
    var body: some View {
        //(horizontalSpacing: 30,verticalSpacing: 10)
        Grid(alignment: .topLeading) {
            GridRow(alignment: .bottom) {
                CellContent(index: 0, color: .purple)
                Image(systemName: "heart")
                    .gridColumnAlignment(.trailing)
                    .font(.largeTitle)
                Image(systemName: "heart")
                    .gridColumnAlignment(.center)
                    .font(.largeTitle)
                Image(systemName: "heart")
                    .gridColumnAlignment(.leading)
                    .font(.largeTitle)
                CellContent(index: 0, color: .pink)
            }
            GridRow {
                ForEach(1...5, id: \.self) { index in
                    if (index % 2 == 1) {
                        CellContent(index: index, color: .red)
                    } else {
                        // gridCell-
                        
                        Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                    }
                }
            }
            GridRow {
                ForEach(6...10, id: \.self) { index in
                    CellContent(index: index, color: .orange)
                }
            }
            GridRow {
                ForEach(11...15, id: \.self) { index in
                    CellContent(index: index, color: .yellow)
                }
            }
            // GridRow가 아닌 다른 자식 뷰
            // 그리드 레이아웃 내에서 전체 행을 차지하도록 자동 확장
            // CellContent 구조체 수정
            CellContent(index: 16, color: .green)
            
            //gridCellColumns() 수정자를 적용하여 단일 셀이 지정된 수의 열에 놓일 수 있ㄷ록 적용
            GridRow {
                CellContent(index: 17, color: .indigo)
                    .gridCellColumns(2)
            }
        }.padding()
    }
}

#Preview {
    GridRowDemoView()
}
