//
//  AddItemTableTableViewController.swift
//  Checklist
//
//  Created by Aamir on 03/07/19.
//  Copyright © 2019 CodeStella. All rights reserved.
//

import UIKit

class AddItemTableTableViewController: UITableViewController {
  
  @IBAction func cancel(_ sender: Any) {
    navigationController?.popViewController(animated: true)
  }
  
  @IBAction func done(_ sender: Any) {
  }
  
  @IBOutlet weak var textField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

  
  

}
