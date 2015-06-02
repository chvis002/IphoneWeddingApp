//
//  ViewController.swift
//  IphoneWeddingApp
//
//  Created by Christopher on 02/06/15.
//  Copyright (c) 2015 ChristopherFrida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
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
    }


}

