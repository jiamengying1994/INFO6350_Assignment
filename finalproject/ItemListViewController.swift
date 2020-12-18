//
//  ItemListViewController.swift
//  finalproject
//
//  Created by my on 12/17/20.
//

import UIKit

class ItemListViewController: UIViewController {
    
  @IBOutlet var tableView: UITableView!
  @IBOutlet var dataProvider: ItemListDataProvider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = dataProvider
    tableView.delegate = dataProvider
    
    dataProvider.itemManager = ToDoItemManager()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    tableView.reloadData()
  }
  

    
  @IBAction func addItem(_ sender: UIBarButtonItem) {
    guard let inputViewController = storyboard?.instantiateViewController(withIdentifier: "InputViewController") as? InputViewController else {
      return
    }
    inputViewController.itemManager = dataProvider.itemManager
    
    present(inputViewController, animated: true, completion: nil)
  }
}
