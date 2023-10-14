//
//  ContentView.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView { // ✨
            List {
                Section{
                    CustomCell(cellNum: "👀 오전 실습")
                    CustomCell2(cellNum2: "👀 예제 1 - 시간 계산기")
                    CustomCell3(cellNum3: "👀 예제 2 - 급여 계산기")

                } header: {
                        Text("10월 11일")
                        .font(.headline)
                }
                Section{
                    CustomCell4(cellNum4: "👀 오후 실습")
                    CustomCell5(cellNum5: "👀 예제 3 - 홀짝 판별기")
                    CustomCell6(cellNum6: "👀 예제 4 - 큰수 - 작은수")
                    CustomCell7(cellNum7: "👀 예제 5 - 농구공 담기")
                } header: {
                        Text("10월 12일")
                        .font(.headline)
                }
                Section{
                    CustomCell8(cellNum8: "👀 오후 실습")
                    CustomCell9(cellNum9: "👀 Chapter 23 튜토리얼")

                } header: {
                        Text("10월 13일")
                        .font(.headline)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("🙆 10월 11~13일 강의")
        }
    }
}
//lecturecode
struct CustomCell: View {
    var cellNum: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView()) {
                Text("\(cellNum)")
            }
        }
    }
}
//practice1
struct CustomCell2: View {
    var cellNum2: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView2()) {
                Text("\(cellNum2)")
            }
        }
    }
}
//practice2
struct CustomCell3: View {
    var cellNum3: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView3()) {
                Text("\(cellNum3)")
            }
        }
    }
}
//practice3
struct CustomCell4: View {
    var cellNum4: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView4()) {
                Text("\(cellNum4)")
            }
        }
    }
}
struct CustomCell5: View {
    var cellNum5: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView5()) {
                Text("\(cellNum5)")
            }
        }
    }
}
struct CustomCell6: View {
    var cellNum6: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView6()) {
                Text("\(cellNum6)")
            }
        }
    }
}
struct CustomCell7: View {
    var cellNum7: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView7()) {
                Text("\(cellNum7)")
            }
        }
    }
}
struct CustomCell8: View {
    var cellNum8: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView8()) {
                Text("\(cellNum8)")
            }
        }
    }
}
struct CustomCell9: View {
    var cellNum9: String
    var body: some View {
        HStack {
            NavigationLink(destination: DetailView9()) {
                Text("\(cellNum9)")
            }
        }
    }
}

//하위뷰로 작업하기(구조체 밖 구조체, 단, private 변수 접근 시 복잡해짐)
struct MyStackView: View {
    var body: some View {
        HStack{
            Text("made by me")
        }
    }
}

//커스텀 수정자(공통된 수정사항)
//lecture code 참고
struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.indigo)
            .border(Color.gray, width:  0.2)
            .shadow(color: Color.white, radius: 5, x: 0, y: 5)
    }
    
}

//커스텀 컨테이너 뷰, ViewBuilder 속성을 사용
struct MyStack<Content: View> : View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    var body: some View{
        VStack(spacing: 10){
            content()
        }
        .font(.largeTitle)
    }
}

//숫자만 강제하는
class NumberOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            if value != filtered {
                value = filtered
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
