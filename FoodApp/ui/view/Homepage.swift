//
//  ContentView.swift
//  FoodApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct Homepage: View {
    @State private var foodList = [Food]()
    var body: some View {
        NavigationStack{
            List{
                ForEach(foodList){ food in
                    NavigationLink(destination: FoodDetail(food: food)){
                        FoodItemRow(food: food)
                    }
                    
                }
                
            }.navigationTitle("FOODS")
            
                .onAppear(){
                    var myList = [Food]()
                    let f1 = Food(food_id: 1, food_name: "Ayran", food_image_name: "ayran", food_price: 8)
                    let f2 = Food(food_id: 2, food_name: "Baklava", food_image_name: "baklava", food_price: 70)
                    let f3 = Food(food_id: 3, food_name: "Fanta", food_image_name: "fanta", food_price: 10)
                    let f4 = Food(food_id: 4, food_name: "Kadayıf", food_image_name: "kadayif", food_price: 50)
                    let f5 = Food(food_id: 5, food_name: "Köfte", food_image_name: "kofte", food_price: 60)
                    let f6 = Food(food_id: 6, food_name: "Makarna", food_image_name: "makarna", food_price: 55)
                    
                    myList.append(f1)
                    myList.append(f2)
                    myList.append(f3)
                    myList.append(f4)
                    myList.append(f5)
                    myList.append(f6)
                    
                    foodList = myList
                }
        }
        
        
    }
}

#Preview {
    Homepage()
}
