//
//  CellContent.swift
//  LectureCode
//
//  Created by 황민채 on 11/9/23.
//
import SwiftUI

struct CellContent: View {
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, minHeight: 50)
            .background(color)
            .cornerRadius(8)
            .font(.largeTitle)
    }
}
struct EmptyCell: View {
    var color: Color
    
    var body: some View {
        Text("")
            .frame(minWidth: 50, minHeight: 50)
            .background(color)
            .cornerRadius(8)
            .font(.largeTitle)
    }
}
