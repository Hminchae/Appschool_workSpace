//
//  ContentView.swift
//  FoodInfo
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var foodStore: FoodStore = FoodStore(foods: foodData)
    
    var body: some View {
        NavigationStack{
            List {
                ForEach (0..<foodStore.foods.count, id: \.self) { i in
                    NavigationLink(value: i) {
                        ListCell(food: foodStore.foods[i])
                    }
                }
            }
            .navigationDestination(for: Int.self) { i in
                FoodDetail(selectedFood: foodStore.foods[i])
            }
            .navigationTitle("우리 팀원의 페이보릿 음식")
        }
    }
}
struct ListCell: View {
    
    var food: Food
    
    var body: some View {
        HStack {
            Image(.darkgarbi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 60)
            Text(food.DESC_KOR)
        }
    }
}


#Preview {
    ContentView()
}
