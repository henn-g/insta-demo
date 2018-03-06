//
//  LoginViewController.swift
//  InstaClone
//
//  Created by Henry Guerra on 3/6/18.
//  Copyright © 2018 FREECODE. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    // outlets
  @IBOutlet weak var usernameField: UITextField!
  @IBOutlet weak var passwordField: UITextField!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // button actions
  @IBAction func signUpAction(_ sender: Any) {
    // initialize a user object
    let newUser = PFUser()
    
    // set user properties
    newUser.username = usernameField.text
    newUser.password = passwordField.text
    
    // call sign up function on the object
    newUser.signUpInBackground { (success: Bool, error: Error?) in
      if let error = error {
        print(error.localizedDescription)
      } else {
        print("User Registered successfully")
        // manually segue to logged in view
      }
    }
  }
  @IBAction func loginAction(_ sender: Any) {
    
  }
  

}
