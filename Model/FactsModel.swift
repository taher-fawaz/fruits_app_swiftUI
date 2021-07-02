//
//  FactsModel.swift
//  fruits
//
//  Created by Taher fawaz on 01/05/2021.
//

import Foundation

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}
