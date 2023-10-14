//
//  DetailView7.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/12.
//

import SwiftUI

struct DetailView7: View {
    @State private var ball: String = ""
    @State private var box: Int = 0
    @State private var selected: Bool = false
    var body: some View {
        VStack{
            HStack{
                TextField("농구공의 갯수를 입력하시오",text: $ball)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.blue)
            }
            .padding(40)
            Button(action: btnpress, label: {
                Image("basketball")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaleEffect(selected ? 1.5 : 1.0)
                          .onTapGesture {
                            withAnimation {
                              selected.toggle()
                            }
                          }
            })
            .tint(.black)
            Spacer()
            
            Text("상자 \(box)개 준비")
            Image("basketball")
        }.padding(30)
            .background(Image("basketballplay")
                .ignoresSafeArea())
    }
    func btnpress(){
        if ball.isEmpty == false {
            box = Int(ball)! / 5 + 1
        }
    }
}

struct DetailView7_Previews: PreviewProvider {
    static var previews: some View {
        DetailView7()
    }
}
