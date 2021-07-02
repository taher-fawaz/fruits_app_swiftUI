//
//  RecipeModel.swift
//  fruits
//
//  Created by Taher fawaz on 01/05/2021.
//
import SwiftUI

// MARK: - RECIPE MODEL

struct Recipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var rating: Int
  var serves: Int
  var preparation: Int
  var cooking: Int
  var instructions: [String]
  var ingredients: [String]
}
