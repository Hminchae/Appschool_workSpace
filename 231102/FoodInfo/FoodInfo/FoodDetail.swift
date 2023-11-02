//
//  FoodDetail.swift
//  FoodInfo
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI
import Charts

struct FoodDetail: View {
    let selectedFood: Food
    var foodTemp = [ //이거 데이터 오떻게 받아올런지.. ?
        (name: "탄수화물", count: 23 ),
        (name: "단백질", count: 45 ),
        (name: "지방", count: 31 ),
        (name: "당류", count: 8 )
    ]
    var body: some View {
        Form {
            Section(header: Text("맛있겠쥐?")) {
                Image(.darkgarbi)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedFood.DESC_KOR)
                    .font(.headline)
                VStack(alignment: .leading){
                    Text("\(selectedFood.SERVING_SIZE)g 기준")
                        .foregroundStyle(.blue)
                    Text("총 열량(kcal) : \(selectedFood.NUTR_CONT1)")
                    Text("탄수화물(g) : \(selectedFood.NUTR_CONT2)")
                    Text("단백질(g) : \(selectedFood.NUTR_CONT3)")
                    Text("지방(g) : \(selectedFood.NUTR_CONT4)")
                    Text("당류(g) : \(selectedFood.NUTR_CONT5)")
                }
                Chart {
                    ForEach(foodTemp, id: \.name) { nut in
                        SectorMark(
                            angle: .value("에?", nut.count),
                            innerRadius: .ratio(0.65),
                            angularInset: 2.0
                        )
                        .foregroundStyle(by: .value("Type", nut.name))
                        .cornerRadius(10.0)
                        .annotation(position: .overlay) {
                            Text("\(nut.count)")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                }
                .frame(height: 230)
            }
        }
    }
}

#Preview {
    FoodDetail(selectedFood: foodData[0])
}
