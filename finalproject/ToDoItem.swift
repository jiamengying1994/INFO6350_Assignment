//
//  ToDoItem.swift
//  finalproject
//
//  Created by my on 12/17/20.
//

import Foundation

struct ToDoItem {
  let title: String
  let itemDescription: String?
  let timestamp: Double?
  
  // plist related
  private let titleKey = "titleKey"
  private let itemDescriptionKey = "itemDescriptionKey"
  private let timestampKey = "timestampKey"

  
  var plistDict: [String:Any] {
    var dict = [String:Any]()
    
    dict[titleKey] = title
    if let itemDescription = itemDescription {
      dict[itemDescriptionKey] = itemDescription
    }
    if let timestamp = timestamp {
      dict[timestampKey] = timestamp
    }
  }
}
