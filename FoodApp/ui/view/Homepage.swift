//
//  ContentView.swift
//  FoodApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct Homepage: View {
    
    @ObservedObject private var viewModel = HomepageVM()
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.foodList){ food in
                    NavigationLink(destination: FoodDetail(food: food)){
                        FoodItemRow(food: food)
                    }
                    
                }
                
            }.navigationTitle("FOODS")
            
                .onAppear(){
                    viewModel.loadFoods()
                }
        }
        
        
    }
}

#Preview {
    Homepage()
}
