//
//  ForgetPasswordViewController.swift
//  LoginApp
//
//  Created by my on 11/16/20.
//

import UIKit
import Firebase

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func reset(_ sender: Any) {
        
        var emailAddress = txtEmail.text
        Auth.auth().sendPasswordReset(withEmail: emailAddress!) { (error) in
            DispatchQueue.main.async {
                    
                if let error = error {
                print(error.localizedDescription)
                }
                else {
                        
                print("We send you an email with instructions on how to reset your password.")
                        }
                    }
                }
        
    }
    

}
