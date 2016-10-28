//
//  FFJellyListController.swift
//  FFJellyListController
//
//  Created by Alexey Bondarchuk on 8/28/16.
//  Copyright © 2016 Faifly LLC. All rights reserved.
//

import UIKit

class FFJellyListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        print("Received memory warning at `FFJellyListController`")
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
        if ((indexPath as NSIndexPath).row == (tableView.indexPathForSelectedRow as NSIndexPath?)?.row)
        {
            return 120
        } else
        {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jellyCell", for: indexPath) as! FFJellyListCell
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
    {
        if (indexPath as NSIndexPath).row == (tableView.indexPathForSelectedRow as NSIndexPath?)?.row
        {
            tableView.beginUpdates()
            self.tableView.deselectRow(at: indexPath, animated: true)
            tableView.endUpdates()
            
            return nil
        }
        
        return indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.beginUpdates()
        tableView.endUpdates()
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
