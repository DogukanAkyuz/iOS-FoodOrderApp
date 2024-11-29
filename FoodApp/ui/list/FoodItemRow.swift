//
//  FoodItemRow.swift
//  FoodApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct FoodItemRow: View {
    var food = Food()
    
    var body: some View {
        HStack{
            Image(food.food_image_name!).resizable().frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 30){
                Text(food.food_name!).bold()
                Text("\(food.food_price!) ₺").foregroundStyle(.blue).bold()
            }
        }
    }
}

/*
 #Preview {
    Homepage()
}
*/
