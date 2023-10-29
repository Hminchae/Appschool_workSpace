//: [Previous](@previous)
import SwiftUI
import PlaygroundSupport

struct ContentView : View {
    @State private var result1 : Int = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Text("예제 1번")
            VStack{
                HStack{
                    Text("수")
                    Text("수")}.padding(20)
                VStack{
                    Text("곱하기 결과 :")
                    Text("나누기 결과 :")
                }
            }
        }
        .padding(200)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
