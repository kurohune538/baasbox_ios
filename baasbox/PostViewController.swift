//
//  PostViewController.swift
//  baasbox
//
//  Created by shinnosuke on 2016/01/17.
//  Copyright © 2016年 shinnosuke. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    var client: BAAClient = BAAClient.sharedClient()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        client.loadCollection(<#T##object: BAAObject!##BAAObject!#>, withParams: <#T##[NSObject : AnyObject]!#>, completion: <#T##BAAArrayResultBlock!##BAAArrayResultBlock!##([AnyObject]!, NSError!) -> Void#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
