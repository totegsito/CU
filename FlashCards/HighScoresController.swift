//
//  HighScoresController.swift
//  FlashCards
//
//  Created by Adrián García Padilla on 31/5/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class HighScoresController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var ScoresTable: UITableView!
    
    var answers = [String]()
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let values = NSUserDefaults.standardUserDefaults().objectForKey("Scores") as! [String : [Float]]
        for value in values {
            answers.append(value.0 + ": "  + String(value.1.maxElement()!))
        }
        
        
        ScoresTable.delegate = self
        ScoresTable.dataSource = self
    }
    
    @IBAction func back(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK:  UITextFieldDelegate Methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = answers[row]
        
        return cell
    }
    
    // MARK:  UITableViewDelegate Methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print(answers[row])
    }

}
