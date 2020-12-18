//
//  DetailViewController.swift
//  finalproject
//
//  Created by my on 12/17/20.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
  
  @IBOutlet var titleLabel: UILabel!
  @IBOutlet var mapView: MKMapView!
  @IBOutlet var locationLabel: UILabel!
  
  var item: ToDoItem?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let item = item else {
      return
    }
  }
  
}

