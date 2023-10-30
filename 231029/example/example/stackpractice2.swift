//
//  SwiftUIView.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

/*
 다음 코드는 ZStack을 사용하여 두 개의 Rectangle 뷰를 겹치게 하려고 합니다.

 alignment 매개변수를 사용하여 첫 번째 Rectangle 뷰가 왼쪽 상단에, 두 번째 Rectangle 뷰가 오른쪽 하단에 위치하도록 코드를 수정해보세요.
 */

// p.294
extension HorizontalAlignment {
    enum MyHorizontal: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[HorizontalAlignment.center]
        }
    }
    static let myAlignment = HorizontalAlignment(MyHorizontal.self)
}

// p.294
extension VerticalAlignment {
    private enum MyVertical: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    static let myAlignment = VerticalAlignment(MyVertical.self)
}

// p295
extension Alignment {
    static let myAlignment = Alignment(horizontal: HorizontalAlignment.myAlignment, vertical: VerticalAlignment.myAlignment)
}

import SwiftUI

struct stackpractice2: View {
    var body: some View {
        ZStack(alignment: Alignment.myAlignment) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .alignmentGuide(VerticalAlignment.myAlignment) { d in
                    d[VerticalAlignment.bottom]
                }
                .alignmentGuide(HorizontalAlignment.myAlignment) { d in
                    d[HorizontalAlignment.trailing]
                }
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .alignmentGuide(VerticalAlignment.myAlignment) { d in
                    d[.leading]
                }
                .alignmentGuide(VerticalAlignment.myAlignment) { d in
                    d[.top]
                }
        }
    }
}

#Preview {
    stackpractice2()
}
