//
//  TableViewController.swift
//  BoulderNights
//
//  Created by Ana-Sophia Brande on 2/21/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITableViewSource {
    
    @IBOutlet var EventTable: UITableView!
    
        var bars = [Bar]()
        var eventsInfo = [Event]()
    
    var nameList[String:String] = [:]
    var description[String] = [:]
    var dateAndTime[String:String] =[:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barNameArray = [""]
        eventTitleArray = [""]
        descriptionArray =[""]
        dateArray =[""]
        timeArray =[""]

            let reposURL = NSURL(string: "https://github.com/abrande/BoulderNights/blob/develop/events.json")
            // 2
            if let JSONData = NSData(contentsOfURL: reposURL!) {
                // 3
                if let json = NSJSONSerialization.JSONObjectWithData(JSONData, options: nil, error: nil) as? NSDictionary {
                    // 4
                    if let reposArray = json["names"] as? [NSDictionary] {
                        // 5
                        for item in reposArray {
                            eventsInfo.append(event(json: name))
                        }
                    }
                }
            }
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barNameArray.count
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bars.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = bars[indexPath.row].name
        cell.textLabel?.text = eventsInfo[indexPath.row].name
        cell.detailTextLabel?.text = eventsInfo[indexPath.row].description
        cell.detailTextLabel?.text = eventsInfo[indexPath.row].time
        cell.detailTextLabel?.text = eventsInfo[indexPath.row].date
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        println("You selected cell #\(indexPath.row)!")
    }
} 
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
