//
//  SignUpViewController.swift
//  Netflix_Assignment
//
//  Created by 강석호 on 5/16/24.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    
    @IBOutlet var codeTextField: UITextField!
    @IBOutlet var plusInfoSwitch: UISwitch!
    
    @IBOutlet var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.layer.cornerRadius = 5
        passwordTextField.layer.cornerRadius = 5
        nicknameTextField.layer.cornerRadius = 5
        locationTextField.layer.cornerRadius = 5
        codeTextField.layer.cornerRadius = 5
        
        codeTextField.keyboardType = .numberPad
        emailTextField.keyboardType = .emailAddress
        plusInfoSwitch.onTintColor = .blue
        
        passwordTextField.isSecureTextEntry = true
        
    }
    
    @IBAction func emailFieldClicked(_ sender: UITextField) {
    }
    @IBAction func passwordFieldClicked(_ sender: UITextField) {
    }
    @IBAction func nicknameFieldClicked(_ sender: UITextField) {
    }
    @IBAction func locationFieldClicked(_ sender: UITextField) {
    }
    
    @IBAction func codeFieldClicked(_ sender: Any) {
    }
    
    @IBAction func signupButtonClicked(_ sender: Any) {
        view.endEditing(true)
    }
}
