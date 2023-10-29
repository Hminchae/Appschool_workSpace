//
//  thirdView.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI

struct thirdView: View {
    @AppStorage("name") var name: String = ""
    var body: some View {
        VStack {
            Text("사용자 이름을 입력하시오")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(40)
            HStack {
                TextField("예)홍길동",text: $name)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.blue)
                Button(action: btnpress, label: {
                     Text("확인")
                })
                .buttonStyle(.bordered)
            }
        }.padding()
    }
    func btnpress(){
        if name.isEmpty == false {
            
        }
    }

}

#Preview {
    thirdView()
}
