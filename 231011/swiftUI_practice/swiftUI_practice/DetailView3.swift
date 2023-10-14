//
//  SwiftUIView.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/11.
//

import SwiftUI

struct DetailView3: View {
    @State private var timemoney: String = ""
    @State private var time: String = ""
    @State private var result: Int = 0
    var body: some View {
        VStack{
            Text("🏦 급여 계산기 🏦")
                .foregroundColor(Color.black)
                .font(.largeTitle)
            VStack {
                VStack {
                    TextField("시급을 입력하세요", text: $timemoney)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("근무 시간을 입력하세요", text: $time)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(20)
                HStack {
                    Button(action: btnpress, label: {
                        Text("Send")
                    })
                    .buttonStyle(.bordered)
                    .tint(.purple)
                }.padding(20)
                HStack {
                    Text("이번 달 \(result)원 버셨습니다^3^")
                }.padding(30)
                    .font(.headline)
                    .foregroundColor(Color.black)
            }.padding(30)
                .background(Color.white)
        }
    }
    func btnpress(){
        if timemoney.isEmpty == false || time.isEmpty == false{
            if Int(time)! > 8 {
                result = (Int(timemoney)! * 8 ) + Int(Double(timemoney)! * 1.5) * (Int(time)! - 8)
            }else {
                result = Int(timemoney)! * Int(time)!
            }
        }
    }
}


struct DetailView3_Previews: PreviewProvider {
    static var previews: some View {
        DetailView3()
    }
}
