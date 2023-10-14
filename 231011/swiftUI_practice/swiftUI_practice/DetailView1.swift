//
//  basicView.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/11.
//

// Cell을 선택했을 때 이동될 View.
import SwiftUI

struct DetailView: View {
    @ObservedObject var num = NumberOnly()
    @State private var msg = ""
    @State private var score: Int = 0
    //프로퍼티로서의 뷰
    let carStack = HStack {
        Text("Car Image")
            .font(.headline)
            .foregroundColor(.green)
        Image(systemName: "car.fill")
    }
    var body: some View {
        VStack{
            carStack
            Image(systemName: "cloud.moon.bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)//modifier
            Text("Hello World")
                .foregroundColor(Color.black)
                .padding()//수정자 순서 주의
                .border(Color.white)
            Text("\(msg)")
                .modifier(StandardTitle())
            HStack{
                TextField("Score",value: $score, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                TextField("Number", text: $num.value)
                    .textContentType(.creditCardNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
            }
            HStack {
                TextField("Input", text: $msg)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: btnpressed, label: {
                    Text("Send")
                        .foregroundColor(Color.orange)
                    Button("btnHello") {
                        msg = "hello"//후행 클로저
                    }
                })
            }.padding(20)
            MyStackView()//하위뷰
                .font(.custom("Copperplate",size:  40))
            //커스텀 컨테이너 뷰
            MyStack {
                Text("Hello")
                    .font(.title)
            }
            Label(
            title: {Text("Lable")},
            icon: {
                Circle()
                    .fill()
                    .frame(width: 25, height: 25)
            })
            .labelStyle(.titleOnly)//레이블 스타일 적용
        }.padding(30)
         .background(Color.gray)
    }
    func btnpressed(){
        msg += " Hi!! ^^"
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
