//
//  QuestionsController.swift
//  FlashCards
//
//  Created by Quesada Muñoz on 05/05/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class QuestionsController: UIViewController {
    
    
    @IBOutlet weak var Level: UILabel!

    @IBOutlet weak var WordLB: UILabel!
    @IBOutlet weak var TranslationLB: UILabel!
    
    
    var actual:String!
    
    var valores:AnyObject!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Level.text = actual
        valores = NSUserDefaults.standardUserDefaults().objectForKey(actual)
        WordLB.text = valores[0]["word"]!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
