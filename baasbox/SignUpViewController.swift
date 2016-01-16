//
//  SignUpViewController.swift
//  baasbox
//
//  Created by shinnosuke on 2016/01/16.
//  Copyright © 2016年 shinnosuke. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    var client: BAAClient = BAAClient.sharedClient()
    @IBOutlet weak var userNamefield: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordField.secureTextEntry = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signUp (sender: AnyObject) {
        client.createUserWithUsername(userNamefield.text, password: passwordField.text, completion: {(success, error) -> Void in
            if success {
                print(success.hashValue)
                
            } else {
                print("error")
            }
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
