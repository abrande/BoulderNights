//
//  TableViewController.swift
//  BoulderNights
//
//  Created by Ana-Sophia Brande on 2/21/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var EventName: UILabel!
    @IBOutlet var EventTable: UITableView!
    @IBOutlet var Desc: UILabel!
    @IBOutlet var Tagline: UILabel!
    @IBOutlet var Date: UILabel!
    @IBOutlet var Time: UILabel!
    
    var bars = [Bar]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let eventPath = NSBundle.mainBundle().pathForResource("events", ofType: "json")
        let data = NSData(contentsOfFile: eventPath!)
       
        /*
        for object in data{
        bars.append(new, bar(object.barName, object.location, object.rating, object.overview, object.phone, object.email, object.website, object.name, object.time, object.date),
    
        }
        */
        /*
 init(barName: String, location: String, rating: String, overview: String, phone: String, email: String, website: String, name: String, time: String, date: String) {

    for object in data:
    bars.append(new bar(object.barName, object...)
*/
            
        //----------------------
        // Get JSON data from URL
        // Code block from http://www.learnswiftonline.com/mini-tutorials/how-to-download-and-read-json/
        //----------------------
        func startConnection(){
            let requestURL: NSURL = NSURL(string: "https://www.learnswiftonline.com/Samples/subway.json")!
            let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: requestURL)
            let session = NSURLSession.sharedSession()
            let task = session.dataTaskWithRequest(urlRequest) {
                (data, response, error) -> Void in
                
                let httpResponse = response as! NSHTTPURLResponse
                let statusCode = httpResponse.statusCode
                
                if (statusCode == 200) {
                    do{
                        let json = try NSJSONSerialization.JSONObjectWithData(data!, options:.AllowFragments)
                        if let items = json["stations"] as? [[String: AnyObject]] {
                            for item in items {
                                if let name = item["stationName"] as? String {
                                    if let year = item["buildYear"] as? String {
                                        NSLog("%@ (Built %@)",name,year)
                                    }
                                }
                            }
                        }
                    }catch {
                        print("Error with Json: \(error)")
                    }
                }
            }
            task.resume()
        }

        }
    
    
  
    
    enum JSONValue{
        case JString(String)
    
    let json = JSONValue(JSONValue){
        switch json["user_id"]{
        case .JSTRING(let stringValue):
            let id = stringValue.toInt() //is this wrong? string to int?
        }
    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    
    override func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {

    }
    
   override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bars.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) 
        cell.textLabel!.text = bars[indexPath.row].barName
        cell.detailTextLabel?.text = bars[indexPath.row].name
        cell.detailTextLabel?.text = bars[indexPath.row].description
        cell.detailTextLabel?.text = bars[indexPath.row].time
        cell.detailTextLabel?.text = bars[indexPath.row].date
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
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


