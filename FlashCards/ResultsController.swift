//
//  ResultsController.swift
//  FlashCards
//
//  Created by Adrián García Padilla on 15/5/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {
    
    
    @IBOutlet weak var TemaLB: UILabel!
    @IBOutlet weak var ResultadoLB: UILabel!
    @IBOutlet weak var FraseLb: UILabel!
    @IBOutlet weak var TimeLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Back(){
        //dismissViewControllerAnimated(true, completion: nil)
        presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
