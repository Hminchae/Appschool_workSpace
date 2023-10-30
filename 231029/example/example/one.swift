//
//  one.swift
//  example
//
//  Created by 황민채 on 10/30/23.
//

import SwiftUI


struct one: View {
    var colors: [Color] = [.white, .red, .green, .blue, .pink]
    var colornames = ["White", "Red", "Green", "Blue", "Pink"]
    @AppStorage("colorIndex") var colorIndex = 0

//    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "바보".precomposedStringWithCanonicalMapping
    
    //색상 배열 인덱스 값을 저장하기 위한 상태 프로퍼티
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text(text)
                    .font(.largeTitle) //텍스트 뷰
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(rotation))
                    .animation(.easeInOut(duration: 5), value: rotation)
                    .foregroundColor(colors[colorIndex])
                //easy in out 효과
                Spacer()
                Divider()
                Slider(value: $rotation, in: 0...360, step: 0.1)
                    .padding()
                //슬라이더 뷰
                //텍스트뷰 회전시킬 총량을 제어하는데 사용 -> 이를 위해서는 slider 뷰와 현재의 회전 값을 저장하게 될 상태 프로퍼티 간에 바인딩이 구축되어야 함
                //$문자를 붙이는 이유는 바인딩 되도록 선언하기 때문임
                TextField("Enter text here", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .foregroundColor(Color.black)

                Picker(selection: $colorIndex, label: Text("Color")) {
                    ForEach ( 0 ..< colornames.count, id:\.self) {
                        Text(colornames[$0])
                            .foregroundColor(colors[$0])
                    }
                }
                .foregroundColor(Color.white)
                .pickerStyle(.wheel)
                .padding()
            }
        }
    }
}

#Preview {
    one()
}
