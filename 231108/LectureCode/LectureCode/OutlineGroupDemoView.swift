//
//  OutlineGroupDemoView.swift
//  LectureCode
//
//  Created by 황민채 on 11/8/23.
//

/**
 # 계층적 데이터를 표현
 */

import SwiftUI

// 샘플 데이터 구조 p.355
struct CarInfo: Identifiable {
    var id = UUID()         // 인스턴스 고유 식별자
    var name: String        // 차량 타입, 제조사, 모델 이름 등
    var image: String       // 표시될 심볼 이미지
    var children: [CarInfo]?
}

// 샘플 데이터 준비 p.356
let carItems: [CarInfo] = [

    CarInfo(name: "Hybrid Cars", image: "leaf.fill", children: [
        CarInfo(name: "Toyota", image: "car.circle", children : [
            CarInfo(name: "Prius", image: "leaf.fill"),
            CarInfo(name: "Highlander Hybrid", image: "leaf.fill"),
            CarInfo(name: "Lexus", image: "car.circle", children: [
                CarInfo(name: "Lexus RX", image: "leaf.fill"),
                CarInfo(name: "Lexus NX", image: "leaf.fill")])
        ]),
        CarInfo(name: "Ford", image: "car.circle", children : [
            CarInfo(name: "Fusion Energi", image: "leaf.fill"),
            CarInfo(name: "Escape", image: "leaf.fill"),
            CarInfo(name: "Volvo", image: "car.circle", children: [
                CarInfo(name: "S90 Hybrid", image: "leaf.fill"),
                CarInfo(name: "XC90 Hybrid", image: "leaf.fill")])
        ]),
    ]),

    CarInfo(name: "Electric Cars", image: "bolt.car.fill", children: [
        CarInfo(name: "Tesla", image: "car.circle", children : [
            CarInfo(name: "Model 3", image: "bolt.car.fill")
        ]),
        CarInfo(name: "Karma", image: "car.circle", children : [
            CarInfo(name: "Revero GT", image: "bolt.car.fill")
        ])
    ])
]

struct OutlineGroupDemoView: View {
    var body: some View {
        List {
            ForEach(carItems) { carItem in
                Section(header: Text(carItem.name)) {
                    OutlineGroup(carItem.children ?? [CarInfo](), children: \.children) { child in
                        HStack {
                            Image(systemName: child.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.pink)
                            Text(child.name)
                                .font(.system(.title3, design: .rounded)) // 조금 바뀜
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    OutlineGroupDemoView()
}
