//
//  ViewController.swift
//  LoginApp
//
//  Created by Евгений on 25.08.2021.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeLabel = userNameField.text
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(with: "Oooops!",
                  and: "Your name is User 🤪",
                  cleanPasswordField: false)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oooops!",
                  and: "Your password is Password",
                  cleanPasswordField: false)
    }
    
    @IBAction func logInPressed() {
        if userNameField.text == "User" && passwordField.text == "Password" {
            
        } else {showAlert(with: "Invalid login or password",
                          and: "Please, enter correct login and password",
                          cleanPasswordField: true)
            
        }
        
    }
    
    private func showAlert(with title: String, and message: String,
                           cleanPasswordField: Bool){
        
        let alert = UIAlertController(title: title, message: message,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            if cleanPasswordField {
                self.passwordField.text = ""
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
     
}

