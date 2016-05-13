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
    
    
    var actual: String!
    var cont:Int!
    var respuestas = [Bool]()
    var values = [[String:String]]()

    @IBOutlet weak var StartButton: UIButton!
    
    @IBAction func Empezar(){
        WordLB.alpha = 1
        TranslationLB.alpha = 1
        actual = Level.text
        StartButton.alpha = 0
        values = NSUserDefaults.standardUserDefaults().objectForKey(actual) as! [[String:String]]
        WordLB.text = values[cont]["word"]!
        TranslationLB.text = values[cont]["translation"]!
        print (values)
        
    }
    
    @IBAction func Volver(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func nextQuestion(){
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WordLB.alpha = 0
        TranslationLB.alpha = 0
        cont = 0
        
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
