//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Евгений on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeUserLabel: UILabel!
    
    var welcomeLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = ("Welcome, \(welcomeLabel ?? "")!")
    
    }
   
    @IBAction func logOutPressed() {
    dismiss(animated: true)
    }
    
}
