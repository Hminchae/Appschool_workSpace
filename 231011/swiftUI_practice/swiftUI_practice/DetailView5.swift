//
//  DetailView5.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/12.
//

import SwiftUI

struct DetailView5: View {
    @State private var num: String = ""
    @State private var result: String = ""
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                Text("홀짝 판별기")
                    .font(.largeTitle)
                    .padding(.bottom, 150)
                Text("답 : \(result)")
                    .font(.title2)
                HStack{
                    Spacer()
                    TextField("정수를 입력하세요", text: $num)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: btnpress, label: {
                        Text("Send")
                    })
                }
            }
        }.foregroundColor(Color.white)
    }
    func btnpress(){
        result = Int(num)! % 2 == 0 ? "짝수" : "홀수"
    }
}

struct DetailView5_Previews: PreviewProvider {
    static var previews: some View {
        DetailView5()
    }
    
}
