//
//  stackpractice5.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//
/*
 다음 코드는 세 개의 텍스트 뷰를 수직으로 정렬하고, 첫 번째 텍스트 뷰는 위에, 두 번째 텍스트 뷰는 중앙에, 세 번째 텍스트 뷰는 아래에 배치하려고 한다.

 원하는 결과를 얻도록 코드를 수정해보세요.
 */

import SwiftUI


struct stackpractice5: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("One")
            Text("Two")
            Text("Three")
        }
        Spacer()
        HStack(alignment: .top) {
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
            Image(systemName: "moon.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.gray)
            Image(systemName: "sun.max.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.orange)
        }
        Spacer()
        VStack(alignment: .trailing) {
            Image(systemName: "arrow.up.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
            Image(systemName: "arrow.right.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.green)
            Image(systemName: "arrow.down.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    stackpractice5()
}
