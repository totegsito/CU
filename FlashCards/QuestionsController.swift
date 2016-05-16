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
    @IBOutlet weak var answersLB: UILabel!
    @IBOutlet weak var Finish: UIButton!
    
    @IBOutlet weak var derButton: UIButton!
    @IBOutlet weak var dieButton: UIButton!
    @IBOutlet weak var dasButton: UIButton!
    
    var actual: String!
    var cont:Int!
    var answers = [String]()
    var values = [[String:String]]()
    var end:Bool = false

    @IBOutlet weak var StartButton: UIButton!
    
    @IBOutlet weak var Card: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WordLB.alpha = 0
        TranslationLB.alpha = 0
        derButton.alpha = 0
        dieButton.alpha = 0
        dasButton.alpha = 0
        answersLB.alpha = 0
        Finish.alpha = 0
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
    
    
    //Inicializamos todo aquí ya que viewDidLoad se ejecuta antes del paso de mensajes de prepareForSegue
    @IBAction func Start(){
        
        StartButton.alpha = 0
        WordLB.alpha = 1
        TranslationLB.alpha = 1
        answersLB.alpha = 1
        actual = Level.text
        
        derButton.alpha = 1
        dieButton.alpha = 1
        dasButton.alpha = 1
        
        
        values = NSUserDefaults.standardUserDefaults().objectForKey(actual) as! [[String:String]]
        
        TranslationLB.text = values[cont]["translation"]!
        WordLB.text = values[cont]["word"]!
        answersLB.text = getNumberOfAnswers() + "/" + String(values.count)
        
        
        var aux: Int = 0
        while(aux<values.count){
            answers.append("")
            aux = aux + 1
        }
        
    }
    
    @IBAction func Back(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func Der(){
        getAnswer("der")
    }
    
    @IBAction func Die(){
        getAnswer("die")
    }
    
    @IBAction func Das(){
        getAnswer("das")
    }
    
    func getAnswer(answer:String){
        
        var answereds:Int = 0
        self.WordLB.text = answer + " " + self.values[self.cont]["word"]!
        self.TranslationLB.text = self.values[self.cont]["translation"]!
        answers[cont] = answer
        
        answersLB.text = getNumberOfAnswers() + "/" + String(values.count)
        
        for aux in answers{
            if(aux != ""){
                answereds = answereds + 1
            }
        }
        if(answereds == values.count){
            Finish.alpha = 1
        }
    }
    
    func nextQuestion(){
        if(cont < (values.count-1)){
            cont = cont + 1
            refreshCard()
        }
    }
    
    func previousQuestion(){
        if(cont > 0){
            cont = cont - 1
            refreshCard()
        }
    }
    
    func refreshCard(){
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.WordLB.alpha = 0.0
            self.TranslationLB.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                if(self.answers[self.cont] != ""){
                    self.WordLB.text = self.answers[self.cont] + " " + self.values[self.cont]["word"]!
                }else{
                    self.WordLB.text = self.values[self.cont]["word"]!
                }
                self.TranslationLB.text = self.values[self.cont]["translation"]!
                // Fade in
                UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                    self.WordLB.alpha = 1.0
                    self.TranslationLB.alpha = 1.0
                    }, completion: nil)
        })
        
    }
    
    func getNumberOfAnswers()->String{
        var answered = 0
        for aux in answers{
            if(aux != ""){
                answered = answered + 1
            }
        }
        end = answered==answers.count
        return String(answered)
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
    
    func evaluar() -> Int{
        var numberOfRights = 0, aux = 0
        while(aux<values.count){
            if (values[aux]["article"] == answers[aux]){
                numberOfRights = numberOfRights + 1

            }
            aux = aux + 1
        }
        
        
        return numberOfRights
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.destinationViewController.view != nil {
            let answers : [String] = ["¡Enhorabuena!", "Sigue practicando"]
            let numberOfRights: Int = evaluar()
            let destination = (segue.destinationViewController as! ResultsController)
            destination.ResultadoLB.text = String(numberOfRights) + "/"+String(values.count)
            destination.FraseLb.text = numberOfRights > (values.count/2) ? answers[0] : answers[1]
            destination.TemaLB.text = Level.text
            
        }
        
        
        /*let vista:QuestionsController = segue.destinationViewController as! QuestionsController
         vista.Level.text = self.nombre*/
        
    }
    


}
