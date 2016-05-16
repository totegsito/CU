//
//  A2Controller.swift
//  FlashCards
//
//  Created by Quesada Muñoz on 05/05/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class A2Controller: UIViewController {

    
    @IBOutlet weak var TemaLB: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        rightSwipe.direction = .Right
        view.addGestureRecognizer(rightSwipe)
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
    
    func handleSwipes(sender: UISwipeGestureRecognizer){
        
        if(sender.direction == .Right){
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func volver(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.destinationViewController.view != nil {
            (segue.destinationViewController as! QuestionsController).Level.text = segue.identifier
        }
        
        
        /*let vista:QuestionsController = segue.destinationViewController as! QuestionsController
        vista.Level.text = self.nombre*/
        
    }

}
