//
//  ViewController.swift
//  Sheng's Calendar
//
//  Created by sheng zhang on 10/25/15.
//  Copyright (c) 2015 Sheng Zhang. All rights reserved.
//

import UIKit

var events = [event]()

class ViewController: UITableViewController {
    
    
    
    @IBOutlet var myTableView: UITableView!
    
    override func viewDidAppear(animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //events = [event(name: "mama", time:"9:30", detail:"haha"),event(name: "maasma", time:"9:30", detail:"haha"),event(name: "mafama", time:"9:30", detail:"haha")]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        var cevent: event
        
        cevent = events[indexPath.row]
        
        cell.textLabel?.text = cevent.time + "      " + cevent.name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            events.removeAtIndex(indexPath.row)
            myTableView.reloadData()
        }
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(self.tableView.indexPathForSelectedRow() != nil){
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
        
        var DestViewController = segue.destinationViewController as! SecondViewController
        
        var passEvent : event
        
        passEvent = events[indexPath.row]
        
        DestViewController.newName = passEvent.name
        DestViewController.newTime = passEvent.time
        DestViewController.newDetail = passEvent.detail
        
        }

    }

    

}

