//
//  FoodStore.swift
//  FoodInfo
//
//  Created by 황민채 on 11/2/23.
//

import SwiftUI
import Combine

class FoodStore : ObservableObject {
    
    @Published var foods : [Food]
    
    init (foods: [Food] = []) {
        self.foods = foods
    }
}
