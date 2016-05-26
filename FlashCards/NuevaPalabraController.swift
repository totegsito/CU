//
//  NuevaPalabraController.swift
//  FlashCards
//
//  Created by Gascon Cuerdo on 25/05/16.
//  Copyright © 2016 ETSISI. All rights reserved.
//

import UIKit

class NuevaPalabraController: UIViewController {
    
    @IBOutlet var textFieldPalabra: UITextField!
    @IBOutlet var textFieldArticulo: UITextField!
    @IBOutlet var textFieldTraduccion: UITextField!
    
    @IBOutlet var labelInfo: UILabel!
    @IBOutlet var labelInfoP: UILabel!
    @IBOutlet var labelInfoA: UILabel!
    @IBOutlet var labelInfoT: UILabel!
    
    var MiTema = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        labelInfo.text = ""
        labelInfoP.text = ""
        labelInfoA.text = ""
        labelInfoT.text = ""
        textFieldPalabra.layer.borderWidth = 1.0
        textFieldArticulo.layer.borderWidth = 1.0
        textFieldTraduccion.layer.borderWidth = 1.0

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
    
    @IBAction func aceptar() {
        let palabra = textFieldPalabra.text
        let articulo = textFieldArticulo.text
        let traduccion = textFieldTraduccion.text

        var flagPalabra: Bool = false
        var flagArticulo: Bool = false
        var flagTraduccion: Bool = false
        
        var timer = NSTimer()

        if  palabra == "" {
            labelInfoP.text = "Introduce una palabra."
            textFieldPalabra.layer.borderColor = UIColor.redColor().CGColor
        }
        else {
            labelInfoP.text = ""
            textFieldPalabra.layer.borderColor = UIColor.greenColor().CGColor
            flagPalabra = true
        }
        
        if articulo == "" {
            labelInfoA.text = "Introduce un articulo."
            textFieldArticulo.layer.borderColor = UIColor.redColor().CGColor
        }
        else {
            if (articulo == "der" || articulo == "die" || articulo == "das") {
                labelInfoA.text = ""
                textFieldArticulo.layer.borderColor = UIColor.greenColor().CGColor
                flagArticulo = true
            }
            else {
                labelInfoA.text = "Opciones posibles: der, die, das"
                textFieldArticulo.layer.borderColor = UIColor.redColor().CGColor
            }
        }
        
        if traduccion == "" {
            labelInfoT.text = "Introduce una traducción."
            textFieldTraduccion.layer.borderColor = UIColor.redColor().CGColor
        }
        else {
            labelInfoT.text = ""
            textFieldTraduccion.layer.borderColor = UIColor.greenColor().CGColor
            flagTraduccion = true
        }
            
        if(flagPalabra && flagArticulo && flagTraduccion) {
             MiTema.append(["word": palabra!, "article": articulo!, "translation": traduccion!])
            labelInfo.text = "¡Palabra creada!"
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("volver"), userInfo: nil, repeats: false)
        }
        
        
       
    }

}
