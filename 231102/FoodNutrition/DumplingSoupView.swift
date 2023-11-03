//
//  DumplingSoupView.swift
//  FoodNutrition
//
//  Created by Minjae Kim on 11/2/23.
//

import SwiftUI

struct DumplingSoupView: View {
	
	@Binding var nutrition: Nutrition
	
	var body: some View {
		Text(nutrition.descKor)
	}
}

//#Preview {
//	DumplingSoupView(selectedFood: foodData.nutrition[5])
//}
