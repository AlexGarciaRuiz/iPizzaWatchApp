//
//  ConfirmaciónInterfaceController.swift
//  iPizza
//
//  Created by AlexGarcia on 7/13/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmaciónInterfaceController: WKInterfaceController {

    var pizza = Pizza(t:-1, m:-1, q: -1, i: [])
    
    @IBOutlet var lblTamaño: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
        
        lblTamaño.setText("\(TamañoPizza(rawValue: pizza.tamaño)!)")
        lblMasa.setText("\(MasaPizza(rawValue: pizza.masa)!)")
        lblQueso.setText("\(QuesoPizza(rawValue: pizza.queso)!)")
        
        var i = ""
        for ingrediente in pizza.ingredientes {
            i += String(ingrediente) + " "
        }
        lblIngredientes.setText(i)
    }

    @IBAction func nextStep() {
        pushControllerWithName("FinishInterfaceController", context: pizza)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
