//
//  RipeningModel.swift
//  fruits
//
//  Created by Taher fawaz on 01/05/2021.
//

import SwiftUI

// MARK: RIPENING MODEL

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
