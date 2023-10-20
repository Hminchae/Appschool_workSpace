//
//  DetailView10.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/16.
//

import SwiftUI

struct DetailView10: View {
    @State private var count: Int = 0
    @State private var str: String = "Hello World!"
    var body: some View {
        ZStack{
            Color("a").ignoresSafeArea()
            VStack{
                Image("banana")
                    .resizable()
                    .frame(width: 200, height: 200)
                HStack{
                    Button(action: btnpress, label: {Text("HOME")})
                        .buttonStyle(.bordered)
                    Spacer()
                    Text("\(str)")
                    Spacer()
                    Button("CALL"){
                    }
                }
                HStack{
                    TextField("에베베",text: $str)
                        .textFieldStyle(.roundedBorder)
                        .foregroundColor(Color.blue)
                    Button(action: btnpress2, label: {Text("HELLO BUTTON")
                            .aspectRatio(contentMode: .fit)
                            .frame(width: .infinity, height: .infinity)
                            .cornerRadius(10)
                    })
                    .buttonStyle(.bordered)
                }.padding(.top, 440)
            }.padding(10)
        }
    }
    func btnpress() {
        count += 1
    }
    func btnpress2() {
       str = str.uppercased()
    }
}
struct DetailView10_Previews: PreviewProvider {
    static var previews: some View {
        DetailView10()
    }
}
