//
//  MonthView.swift
//  LectureCode
//
//  Created by 황민채 on 11/9/23.
//

import SwiftUI

struct January : View {
    var body: some View {
        
        Grid(alignment: .topLeading) {
            Text("1월")
                .font(.largeTitle)
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct February : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            Text("2월")
                .font(.largeTitle)
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct March : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            Text("3월")
                .font(.largeTitle)
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct April : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            Text("4월")
                .font(.largeTitle)
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct May : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            Text("5월")
                .font(.largeTitle)
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct June : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct July : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct August : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct September : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct JanuaryView : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct October : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct November : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
struct December : View {
    var body: some View {
        Grid(alignment: .topLeading) {
            GridRow(alignment: .top) {
                EmptyCell(color: .clear)
                CellContent(index: 1, color: .clear)
                CellContent(index: 2, color: .clear)
                CellContent(index: 3, color: .clear)
                CellContent(index: 4, color: .clear)
                CellContent(index: 5, color: .clear)
                CellContent(index: 6, color: .clear)
            }
            GridRow {
                ForEach(7...13, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(14...20, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow {
                ForEach(21...27, id: \.self) { index in
                    CellContent(index: index, color: .clear)
                }
            }
            GridRow(alignment: .bottom) {
                CellContent(index: 28, color: .clear)
                CellContent(index: 29, color: .clear)
                CellContent(index: 30, color: .clear)
                CellContent(index: 31, color: .clear)
            }
        }.padding(30)
    }
}
#Preview {
   January()
}
