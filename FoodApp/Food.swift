//
//  Food.swift
//  FoodApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import Foundation

class Food: Identifiable{
    
    var food_id : Int?
    var food_name : String?
    var food_image_name : String?
    var food_price : Int?
    
    init(food_id: Int, food_name: String, food_image_name: String?, food_price: Int) {
        self.food_id = food_id
        self.food_name = food_name
        self.food_image_name = food_image_name
        self.food_price = food_price
    }
    
    init(){
        
        
    }
    
    
}
