//
//  AlignmentView.swift
//  AlignmentTool
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

extension VerticalAlignment {
    private enum OneThird : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d.height / 3
        }
    }
    static let oneThird = VerticalAlignment(OneThird.self)
}
struct AlignmentView: View {
    var body: some View {
        VStack(spacing: 50){
            VStack(alignment: .trailing) {
                Text("Hi guys..")
                Text("my name is hwang")
                Text("nice to meet you")
            }
            HStack(alignment: .firstTextBaseline, spacing: 50) {
                Text("Hi guys..")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("my name is hwang")
                    .font(.headline)
                Text("nice to meet you")
                    .font(.largeTitle)
            }
            HStack(alignment: .oneThird) {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 120, height: 50)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 120, height: 50)
                    .alignmentGuide(.leading, computeValue: { d in 120.0
                    })
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 120, height:  50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension.width / 3
                    })
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 120, height:  50)
                    .alignmentGuide(.oneThird, computeValue: { dimension in
                        dimension[HorizontalAlignment.trailing] + 50 // 꼬리 중심으로
                    })
            }
            VStack(alignment: .trailing) {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 120, height: 50)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 120, height: 50)
                    .alignmentGuide(.leading, computeValue: { d in 120.0
                    })
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 120, height:  50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension.width / 3
                    })
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 120, height:  50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension[HorizontalAlignment.trailing] + 50 // 꼬리 중심으로
                    })
            }
        }
    }
}

#Preview {
    AlignmentView()
}

