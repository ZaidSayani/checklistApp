//
//  TodoList.swift
//  Checklist
//
//  Created by Aamir on 01/07/19.
//  Copyright © 2019 CodeStella. All rights reserved.
//

import Foundation

class TodoList {
  
  var todos: [CheckListItem] = []
  
  init() {
    let  row0Item = CheckListItem()
    let  row1Item = CheckListItem()
    let  row2Item = CheckListItem()
    let  row3Item = CheckListItem()
    let  row4Item = CheckListItem()
    
    
    row0Item.text = "Take a jog"
    row1Item.text = "Watch a movie"
    row2Item.text = "Code an app"
    row3Item.text = "Walk the dog"
    row4Item.text = "Study design pattern"
    
    todos.append(row0Item)
    todos.append(row1Item)
    todos.append(row2Item)
    todos.append(row3Item)
    todos.append(row4Item)
  }
  
  func newTodo() -> CheckListItem {
    let item = CheckListItem()
    item.checked = false
    item.text = randomTitle()
    todos.append(item)
    return item
  }
  
  private func randomTitle() -> String {
    
    var titles = ["Aamir", "Sayani","Aamir", "Sayani", "Aamir"]
    let randomNumber = Int.random(in: 0...titles.count - 1)
    return titles[randomNumber]
    
  }
  
}

