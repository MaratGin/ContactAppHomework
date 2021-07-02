//
//  ViewController.swift
//  ContactApp
//
//  Created by Алия Гиниятова on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    
    let username = "Admin"
    let password = "Admin"
    var success:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   

    
    @IBAction func signInAction(_ sender: Any) {
        guard let username = usernameTextField.text,
             let password = passwordTextField.text else {return}
         if username == self.username, password == self.password {
            success = true
            
         } else {
             welcomeLabel.backgroundColor = .systemRed
             welcomeLabel.text = "Error, incorrect data!"
             passwordTextField.isSecureTextEntry = false
            return
         }
        
    }
    
    
}

