//
//  ViewController.swift
//  Checklist
//
//  Created by Aamir on 18/06/19.
//  Copyright © 2019 CodeStella. All rights reserved.
//

import UIKit

class abcd: UIButton {
  
}




class ChecklistViewController: UITableViewController {
  
  
  
  @IBAction func addItem(_ sender: Any) {
    let newRowIndex = todoList.todos.count
    _ = todoList.newTodo()
    
    let indexPath = IndexPath(row: newRowIndex, section: 0)
    let indexPaths = [indexPath]
    tableView.insertRows(at: indexPaths, with: .automatic)
  }
  var todoList : TodoList
  
  required init?(coder aDecoder: NSCoder) {
    
    //    row0Item.text = "Take a jog"
    //    row1Item.text = "Watch a movie"
    //    row2Item.text = "Code an app"
    //    row3Item.text = "Walk the dog"
    //    row4Item.text = "Study design pattern"
    
    todoList = TodoList()
    
    super.init(coder: aDecoder)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.prefersLargeTitles = true
    
  }
  
  
  
 

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return todoList.todos.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
    
    if let label = cell.viewWithTag(1000) as? UILabel {
      
      label.text = todoList.todos[indexPath.row].text
  }
    configureCheckmark(for: cell, at: indexPath)
    
    return cell

  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      if let cell = tableView.cellForRow(at: indexPath) {
        
        configureCheckmark(for: cell, at: indexPath)
        
        tableView.deselectRow(at: indexPath, animated: true)
         
      }
  }
  
  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
    todoList.todos.remove(at: indexPath.row)
    let indexPaths = [indexPath]
    tableView.deleteRows(at: indexPaths, with: .automatic)
    
  }
  
  func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
    
    let isChecked = todoList.todos[indexPath.row].checked

      if isChecked {
        cell.accessoryType = .checkmark
      } else {
        cell.accessoryType = .none
      }
    
    todoList.todos[indexPath.row].checked = !isChecked
  
    }
}

