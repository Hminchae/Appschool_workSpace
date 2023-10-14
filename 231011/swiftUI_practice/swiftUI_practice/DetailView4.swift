//
//  SwiftUIView2.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/11.
//
// VStack(수직), HStack(수평), ZStack(중첩되게 배치하는 뷰)
// Spacer : 뷰 사이에 공간을 추가(스택의 방향에 따라 유연하기 확장/ 축소)

//동적 HStack/VStack 변환
//
import SwiftUI

struct DetailView4 : View {
    //동적 HStack/ VStack 변환
    @State var myLayout: AnyLayout = AnyLayout(VStackLayout())
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Spacer()
            VStack{
                Text("Have a nice flight")
                    .font(.largeTitle)
                    .padding(.bottom, 100)
                HStack{
                    Button("HStack") {
                        myLayout = AnyLayout(HStackLayout())
                    }
                    
                    Button("VStack") {
                        myLayout = AnyLayout(VStackLayout())
                    }
                }.foregroundColor(Color.pink)
                HStack(alignment: .top,spacing: 150){
                    Image(systemName:"cursorarrow.rays")
                    Text("아오")
                    Text("악")
                    }.border(Color.white)
                HStack {
                    Image(systemName: "airplane")
                        
                    Text("Flight time:")
                        .layoutPriority(1)//우선순위
                    Text("London")
                    Text("Seoul")
                        .layoutPriority(2)
                    Text("Paris")
                }
                .font(.largeTitle)
                .lineLimit(1...2)//줄 제한
                //SwiftUI 프레임: 뷰 크기를 조절
                //.infinity 사용 가능한 모든 영역을 차지
                //.edgeIgnoreingSafeArea() 안전 영역 무시
                Text("SwiftUI Frame")
                    .font(.largeTitle)
                    .border(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                GeometryReader { geo in
                    VStack{
                        //Vstack 의 1/2 포고가 3/4 높이를 차지
                        Text("GeometryReader")
                            .font(.largeTitle)
                            .border(Color.black)
                            .frame(width: geo.size.width / 2,height: (geo.size.height / 4) * 3)
                        //Vstack 의 1/3 포고가 1/4 높이를 차지
                        Text("GeometryReader")
                            .font(.largeTitle)
                            .border(Color.black)
                            .frame(width: geo.size.width / 3,height: geo.size.height / 4)
                    }
                }
                MyStackView()//하위뷰
                    .font(.custom("Copperplate",size:  30))
            }.foregroundColor(Color.white)
        }
    }
}

struct DetailView4_Previews: PreviewProvider {
    static var previews: some View {
        DetailView4()
    }
}
