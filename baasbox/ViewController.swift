//
//  ViewController.swift
//  baasbox
//
//  Created by shinnosuke on 2016/01/16.
//  Copyright © 2016年 shinnosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var client: BAAClient = BAAClient.sharedClient()
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        passwordField.secureTextEntry = true
        
    }
    
    @IBAction func login (sender: AnyObject) {
        client.authenticateUser(userNameField.text!, password: passwordField.text!, completion: {(success, error) -> Void in
            if success {
                print("success")
                
            } else {
                print("error")
            }
        })
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

