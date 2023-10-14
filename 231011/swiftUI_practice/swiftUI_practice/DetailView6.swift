//
//  DetailView6.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/12.
//

import SwiftUI

struct DetailView6: View {
    @State private var num1: String = ""
    @State private var num2: String = ""
    @State private var result: Int = 0
    
    var body: some View {
        VStack{
            Text("큰 수 - 작은 수 계산기")
                .font(.largeTitle)
            HStack{
                TextField("첫번째 수",text: $num1)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.blue)
                TextField("두번째 수",text: $num2)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.blue)
            }
            Button(action: btnpress, label: {
                Text("Send")
            })
            .buttonStyle(.bordered)
            .tint(.purple)
            Text("답 : \(result)")
                .font(.title3)
        }
        .padding(40)
        .background(Image("cloud2")
        .ignoresSafeArea())
        .foregroundColor(Color.white)
    }
    func btnpress(){
        if num1.isEmpty == false && num2.isEmpty == false {
            result = Int(num1)! > Int(num2)! ? Int(num1)! - Int(num2)! : Int(num2)! - Int(num1)!
        }
    }
}

struct DetailView6_Previews: PreviewProvider {
    static var previews: some View {
        DetailView6()
    }
}
