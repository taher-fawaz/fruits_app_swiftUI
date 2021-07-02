//
//  ContentView.swift
//  fruits
//
//  Created by Taher fawaz on 27/04/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                //MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                
                DishesView()
                    .frame(maxWidth:640)
                
                //MARK: - AVOCADO FACTS
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(facts){
                            item in FactsView(fact: item)
                        }
                    }.padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                //MARK: - RECIPE CARD
                Text("Avocado Recipes")
                       .fontWeight(.bold)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                     
                     VStack(alignment: .center, spacing: 20) {
                       ForEach(recipes) { item in
                         RecipeCardView(recipe: item)
                       }
                     }
                     .frame(maxWidth: 640)
                     .padding(.horizontal)
                     
                //MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .serif))
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you need to know about avocado do not be afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight:60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, recipes: recipesData )
    }
}
