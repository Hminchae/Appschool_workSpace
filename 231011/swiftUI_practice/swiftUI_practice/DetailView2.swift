//
//  File.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/11.
//

import SwiftUI

struct DetailView2: View {
    @State private var seconds: String = ""
    @State private var second2: Int = 0
    @State private var minutes: Int = 0
    @State private var hours: Int = 0
    var body: some View {
        VStack{
            VStack {
                Text("🕖 시간 계산기 🕑")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding(.bottom, 150)
                HStack {
                    TextField("초를 입력하세요", text: $seconds)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: btnpress, label: {
                        Text("Send")
                            
                    })
                    .buttonStyle(.bordered)
                    .tint(.purple)
                }.padding(20)
                HStack {
                    Text("\(hours)시")
                    Text("\(minutes)분")
                    Text("\(second2)초")
                }.padding(30)
                    .font(.largeTitle)
                    .foregroundColor(Color.gray)
            }.padding(30)
                .background(Image("cloud").ignoresSafeArea())
        }
    }
    func btnpress(){
        if seconds.isEmpty == false{
            second2 = Int(seconds)!
            hours = second2/3600
            minutes = (second2 - (hours * 3600))/60
            second2 = second2 - (hours * 3600) - (minutes * 60)
        }
    }
}

struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2()
    }
}

