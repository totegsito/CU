//
//  ResultsController.swift
//  FlashCards
//
//  Created by Adrián García Padilla on 15/5/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class ResultsController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var TemaLB: UILabel!
    @IBOutlet weak var ResultadoLB: UILabel!
    @IBOutlet weak var FraseLb: UILabel!
    @IBOutlet weak var TimeLB: UILabel!
    
    @IBOutlet var tableView: UITableView!
    
    var values = [[String:String]]()
    var answers = [String]()
    let textCellIdentifier = "TextCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
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
        cell.textLabel?.text = answers[row] + " " + values[row]["word"]!
        cell.textLabel?.textColor = answers[row] == values[row]["article"] ? UIColor.greenColor() : UIColor.redColor()
        
        return cell
    }
    
    // MARK:  UITableViewDelegate Methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print(answers[row])
    }
    
    @IBAction func Back(){
        //dismissViewControllerAnimated(true, completion: nil)
        presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
