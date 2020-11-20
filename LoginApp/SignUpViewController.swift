//
//  SignUpViewController.swift
//  LoginApp
//
//  Created by my on 11/16/20.
//

import UIKit
import SwiftSpinner
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var lblStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func SignUp(_ sender: Any) {
        let newemail =  email.text
        let  newpassword  = password.text
        if newemail == "" || newpassword!.count < 6 {
                   lblStatus.text = "Please enter email and correct password"
                   return
               }
               if newemail?.isEmail == false {
                   lblStatus.text = "Please enter valid e mail"
                   return
               }
        SwiftSpinner.show("Creating...")
                  // [START create_user]
        Auth.auth().createUser(withEmail: newemail!, password: newpassword!) { authResult, error in
            SwiftSpinner.hide()
            
            if(error != nil) {
                self.lblStatus.text = "Error"
                print("error")
                return
            }
            self.lblStatus.text = "The user  is created"
            
          }
        }
    
}
 
