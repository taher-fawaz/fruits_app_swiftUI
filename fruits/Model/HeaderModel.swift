//
//  HeaderModel.swift
//  fruits
//
//  Created by Taher fawaz on 01/05/2021.
//

import Foundation
struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}
