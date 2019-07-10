//
//  ViewController.swift
//  Guard
//
//  Created by NZK180824A on 2019/07/10.
//  Copyright © 2019 semyeong son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertLabel.text = ""
        alertLabel.textColor = UIColor.red
    }

    @IBAction func doneLogin(_ sender: Any) {
        
        guard let username = usernameField.text, username.count > 0 else {
            // 없는 경우 추가 작업을 할 수 있다.
            alertLabel.text = "username is Empty"
            return // return이 반드시 있어야한다.
        }
        
        guard let password = passwordField.text, password.count > 0 else {
            alertLabel.text = "password is Empty"
            return
        }
        
        if username == "kim" && password == "1234" {
            alertLabel.text = "login Success"
        } else {
            alertLabel.text = "login Failed"
        }
        
    }
}

