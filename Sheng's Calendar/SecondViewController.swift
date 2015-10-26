//
//  SecondViewController.swift
//  Sheng's Calendar
//
//  Created by sheng zhang on 10/25/15.
//  Copyright (c) 2015 Sheng Zhang. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    
    var newName = String()
    var newTime = String()
    var newDetail = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        name.text = newName
        time.text = newTime
        detail.text = newDetail
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}