//
//  stackpractice3.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

/*
 다음 코드는 VStack과 HStack을 사용하여 세 개의 Circle 뷰를 수직으로 정렬하려고 합니다.

 alignment 매개변수와 Spacer 뷰를 사용하여 첫 번째 Circle 뷰가 왼쪽에, 두 번째 Circle 뷰가 가운데에, 세 번째 Circle 뷰가 오른쪽에 위치하도록 코드를 수정해보세요.
 */

import SwiftUI

struct stackpractice3: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Circle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                Spacer()
            }
            HStack{
                Spacer()
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 50, height: 50)
                Spacer()
            }
            HStack{
                Spacer()
                Circle()
                    .fill(Color.orange)
                    .frame(width: 50, height: 50)
            }
        }.padding(50)
    }
}

#Preview {
    stackpractice3()
}
