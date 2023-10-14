//
//  DetailView8.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/13.
//

import SwiftUI
//UI 내의 뷰들은 기본 데이터의 변경에 따른 처리 코드를 작성하지 않아도 뷰가 업데이트 됨

// UI의 모양과 동작을 결정하는 [상태 프로퍼티, Observable 객체, State 객체, Environment 객체]를 제공함

struct DetailView8: View {
    @ObservedObject var demoData: DemoData = DemoData()
    @State private var wifiEnabled = true
    @State private var userName = ""
    //상위 뷰에서 Observable 객체의 인스턴스 초기화
    
    let speedsetting = SpeedSetting()
    
    var body: some View {
        VStack {
            // Enviroment 객체 사용
            // 하위뷰
            VStack {
                SpeedControlView()
                SpeedDisplayView()
            }
            .environmentObject(speedsetting)
            Text("Hello World")
            Text("\(demoData.currentUser) you \(demoData.userCount)")
            //프로퍼티 이름 앞 $ : 상태 프로퍼티와 바인딩(연결)
            Toggle(isOn: $wifiEnabled, label: {
                Text("Enable WiFi")
            })
            TextField("Enter user name", text: $userName)
            Text( userName ) // 상태 프로퍼티에 할당된 값을 참조할 때는 $ 없이 사용
            //Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
            //하위 뷰가 호출될 때 상태 프로퍼티에 대한 바인딩을 전달
            WifiImageView(wifiEnabled: $wifiEnabled)
        }.padding(50)
    }
}
// # State 바인딩
// 하위뷰로 분리되어 있는 상황이 동일한 상태 프로퍼티에 대해 접근해야 하는 경우
// > 바인딩 프로퍼티 래퍼를 이용하여 해결

struct WifiImageView: View {
    @Binding var wifiEnabled: Bool
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}


//Observable 객체

// ObservableObject 프로토콜을 따르는 클래스나 구조체 형태를 취함
// 일반적으로 시간에 따라 변경되는 하나 이상의 데이터 값을 모으고 관리하는 역할을 담당
class DemoData: ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    init() {
        updateData()
    }
    func updateData() {
        //데이터를 최신상태로 유지하기 위한 코드
    }
}
//SwiftUI 환경에 저장되어 뷰에서 뷰로 전달할 필요없이 모든 자식(하위!) 뷰가 접근할 수 있다.
//@EnviromentObject 프로퍼티 래퍼를 사용해서 구독
class SpeedSetting: ObservableObject {
    @Published var speed = 0.0
}

struct SpeedControlView: View {
    @EnvironmentObject var speedsetting: SpeedSetting
    var body: some View {
        Slider(value: $speedsetting.speed, in: 0...100)
    }
}
struct SpeedDisplayView: View {
    @EnvironmentObject var speedsetting: SpeedSetting
    var body: some View {
        Text("Speed = \(speedsetting.speed)")
    }
}

struct DetailView8_Previews: PreviewProvider {
    static var previews: some View {
        DetailView8()
    }
}
