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
    var respuestas = [String]()
    var values = [[String:String]]()

    @IBOutlet weak var StartButton: UIButton!
    
    @IBOutlet weak var Card: UIView!
    
    
    @IBAction func Start(){
        WordLB.alpha = 1
        TranslationLB.alpha = 1
        actual = Level.text
        StartButton.alpha = 0
        values = NSUserDefaults.standardUserDefaults().objectForKey(actual) as! [[String:String]]
        refreshCard("")
        
    }
    
    @IBAction func Back(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func Der(){
        refreshCard("der ")
    }
    
    func nextQuestion(){
        if(cont < (values.count-1)){
            cont = cont + 1
            refreshCard("")
        }
    }
    
    func previousQuestion(){
        if(cont > 0){
            cont = cont - 1
            refreshCard("")
        }
    }
    
    func refreshCard(article:String){
        WordLB.text = article + values[cont]["word"]!
        TranslationLB.text = values[cont]["translation"]!
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WordLB.alpha = 0
        TranslationLB.alpha = 0
        cont = 0
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleSwipes(sender: UISwipeGestureRecognizer){
        if(sender.direction == .Left){
            nextQuestion()
        }
        else
        if(sender.direction == .Right){
            previousQuestion()
        }
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
