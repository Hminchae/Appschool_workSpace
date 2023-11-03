//
//  OysterGukbapView.swift
//  FoodNutrition
//
//  Created by Minjae Kim on 11/2/23.
//

import SwiftUI

struct OysterGukbapView: View {
	
	@Binding var nutrition: Nutrition
	
	var body: some View {
		Text(nutrition.descKor)
	}
}

//#Preview {
//	OysterGukbapView()
//}
