//
//  FoodDetail.swift
//  FoodApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct FoodDetail: View {
    var food = Food()
    
    var body: some View {
        VStack(spacing: 100){
            Image(food.food_image_name!)
            
            Text("\(food.food_price!) ₺").font(.system(size: 50)).foregroundStyle(.blue)
            
            Button{
                print("\(food.food_name!) ADDED!")
            }label: {
                Text("ADD")
                .foregroundStyle(.white).bold().font(.system(size: 20))
                .frame(width: 150, height: 100)
                .background(.blue)
                .clipShape(.buttonBorder)
            }
            
            
        }
        .navigationTitle(food.food_name!)
    }
}


#Preview {
 Homepage()
}

