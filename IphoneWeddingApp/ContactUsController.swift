//
//  ContactUsController.swift
//  IphoneWeddingApp
//
//  Created by Christopher on 04/06/15.
//  Copyright (c) 2015 ChristopherFrida. All rights reserved.
//

import UIKit

class ContactUsController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var messageText: UITextView!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBAction func sendMail(sender: AnyObject) {
        
        //Send stuff from variable and go back to main view
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //stuff from old project
    /*
@IBOutlet weak var randomLabel: UILabel!

@IBOutlet weak var showButton: UIButton!
@IBOutlet weak var hideButton: UIButton!



@IBAction func showAction(sender: UIButton) {

randomLabel.hidden=false

}



@IBAction func hideActuib(sender: UIButton) {

randomLabel.hidden = true


}


override func viewDidLoad() {

randomLabel.hidden = true



super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}*/
}
