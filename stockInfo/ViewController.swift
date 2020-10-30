//
//  ViewController.swift
//  stockInfo
//
//  Created by my on 10/28/20.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {
    
    let apiKey = "50701613ae7dc270a0e14722c873e358"
    let apiURL = "https://financialmodelingprep.com/api/v3/profile/"

    @IBOutlet weak var lblstockValue: UILabel!
    @IBOutlet weak var txtSymbol: UITextField!
    @IBOutlet weak var CEOName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setStockValue(_ sender: Any) {
        guard let stockName = txtSymbol.text else {return}
        
        let url =  "\(apiURL)\(stockName)?apikey=\(apiKey)"
        
        SwiftSpinner.show("Getting Stock Value for \(stockName)")
        AF.request(url).responseJSON { (response) in
            SwiftSpinner.hide()
         
            
            switch response.result {
            case .success(_):
                guard let jsonString = response.value else {
                    return
                }
                guard let stockJSON: [JSON] = JSON(jsonString).array else {return}
                if stockJSON.count < 1 {return}
                
                guard let price = stockJSON[0]["price"].double else {return}
                guard let name =  stockJSON[0]["ceo"].rawString() else {return}
            
                self.lblstockValue.text = "\(price)"
                self.CEOName.text = "\(name)"
            case .failure(_):
                break
            }
        
        
        }
    }
            
        
    
    
}

