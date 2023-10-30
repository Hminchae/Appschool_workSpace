//
//  AligmentZStackView.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//
import SwiftUI
// p.292
extension VerticalAlignment {
    private enum CrossAligment: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAligment.self)
}

// 스택 정렬 교차(스택 겹치기) p.291
struct AligmentZStackView: View {
    var body: some View {
        HStack(alignment: .crossAlignment, spacing: 20) {
            Circle()
                .foregroundColor(.purple)
                .frame(width: 100)
                .alignmentGuide(.crossAlignment, computeValue: { d in
                    d[VerticalAlignment.center]
                })
            VStack {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                    .alignmentGuide(.crossAlignment, computeValue: { d in
                        d[VerticalAlignment.center]
                    })
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)

                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
            }
        }
        .padding()
    }
}
#Preview {
    AligmentZStackView()
}
