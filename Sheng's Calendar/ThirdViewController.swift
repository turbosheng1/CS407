//
//  ThirdViewController.swift
//  Sheng's Calendar
//
//  Created by sheng zhang on 10/25/15.
//  Copyright (c) 2015 Sheng Zhang. All rights reserved.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var detailText: UITextField!
    
    var timeText = String();
    var a = "00"
    var b = "00"
    var hour = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23"]
    var min = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"]
    
    
    
    @IBAction func AddEvent(sender: AnyObject) {
        timeText = a + ":" + b
        events.append(event(name: nameText.text, time:timeText, detail:detailText.text))
        nameText.text = ""
        detailText.text = ""
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker.delegate = self
        picker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if(component == 0){
            return  hour[row]
        }
        return min[row]
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return hour.count
        }
        return min.count
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0){
            a = hour[row]
        }else{
            b = min[row]
        }
    }
}
