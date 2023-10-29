//: [Previous](@previous)

import PlaygroundSupport
import SwiftUI
//예제3

struct ContentView3: View {
    @State private var number1: String = ""
    @State private var result: String = ""
    
    var body: some View{
        VStack{
            Text("100의 자리이하 버리기")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            TextField("ex) 456", text: $number1)
                .multilineTextAlignment(.leading) //정렬 중앙
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(.black, width: 2)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(20)
            
            Button(action: self.touchInSide, label: {
                Text("↓")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
            })
            
            Text(result)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(20)
        }
    }
    func touchInSide(){
        if self.number1 != ""{
            self.result = String(Int(self.number1)!/100*100)
        }
    }
}
