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
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        passwordField.secureTextEntry = true
        appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.viewController = self
    }
    
    @IBAction func login (sender: AnyObject) {

        client.postPath("login", parameters: ["username":userNameField.text!, "password":passwordField.text!, "appcode":"1234567890"], success: {(responseObject) -> Void in
            let token: String = responseObject["data"]!!["X-BB-SESSION"] as! String
            print(token)
            self.appDelegate.token = token
            let postViewController: UIViewController = PostViewController()
            self.navigationController?.pushViewController(postViewController, animated: true)
                
        }, failure: {(error) -> Void in
            print(error)
        })
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

