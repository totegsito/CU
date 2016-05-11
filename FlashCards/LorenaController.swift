//
//  LorenaController.swift
//  FlashCards
//
//  Created by Borja Godoy Gago on 10/05/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class LorenaController: UIViewController {

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
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    let dato = NSUserDefaults()
    var datoTextField:String?
    
    @IBAction func guardar(sender: AnyObject) {
        datoTextField = textField.text! as String
        dato.setObject(datoTextField, forKey: "key")
        dato.synchronize()
    }
    
    @IBAction func ver(sender: AnyObject) {
        label.text = dato.objectForKey("key") as? String
    }
    
    func setObject(value: AnyObject?, forKey defaultName: String) {
        dato.setObject(datoTextField, forKey: "key")
    }

}