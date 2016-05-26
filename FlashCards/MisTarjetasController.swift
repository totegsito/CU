//
//  MisTarjetasController.swift
//  FlashCards
//
//  Created by Gascon Cuerdo on 25/05/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class MisTarjetasController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    @IBAction func volver (){
        dismissViewControllerAnimated(true, completion: nil)
    }


}
