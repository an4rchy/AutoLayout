//
//  ViewController.swift
//  AutoLayout
//
//  Created by Penemetsa, Arjun on 3/24/15.
//  Copyright (c) 2015 Penemetsa, Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!

 
    @IBAction func toggleSecure() {
        secure = !secure
    }
    
    @IBAction func login() {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var secure:Bool = false {didSet {updateUI()}}
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }

}

