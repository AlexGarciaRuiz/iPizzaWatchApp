//
//  IngredientesInterfaceController.swift
//  iPizza
//
//  Created by AlexGarcia on 7/12/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    var pizza = Pizza(t:0, m:0, q:0, i: [])
    
    @IBOutlet var swJamón: WKInterfaceSwitch!
    @IBOutlet var swPepperoni: WKInterfaceSwitch!
    @IBOutlet var swPavo: WKInterfaceSwitch!
    @IBOutlet var swSalchicha: WKInterfaceSwitch!
    @IBOutlet var swAceituna: WKInterfaceSwitch!
    @IBOutlet var swCebolla: WKInterfaceSwitch!
    @IBOutlet var swPimiento: WKInterfaceSwitch!
    @IBOutlet var swPiña: WKInterfaceSwitch!
    @IBOutlet var swAnchoa: WKInterfaceSwitch!
    
    @IBOutlet var nextStepBtn: WKInterfaceButton!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
        
        //print ("Ingredientes: \(pizza.ingredientes.count)")
        
        if pizza.ingredientes.count < 1 || pizza.ingredientes.count > 5 {
            nextStepBtn.setEnabled(false)
        }
        else {
            nextStepBtn.setEnabled(true)
        }
        
        for ingrediente in pizza.ingredientes {
            //print("Ingre: \(ingrediente)")
            switch ingrediente {
            case IngredientesPizza.Jamón:
                swJamón.setOn(true)
            case IngredientesPizza.Pepperoni:
                swPepperoni.setOn(true)
            case IngredientesPizza.Pavo:
                swPavo.setOn(true)
            case IngredientesPizza.Salchicha:
                swSalchicha.setOn(true)
            case IngredientesPizza.Aceituna:
                swAceituna.setOn(true)
            case IngredientesPizza.Cebolla:
                swCebolla.setOn(true)
            case IngredientesPizza.Pimiento:
                swPimiento.setOn(true)
            case IngredientesPizza.Piña:
                swPiña.setOn(true)
            case IngredientesPizza.Anchoa:
                swAnchoa.setOn(true)
            }
        }
        //print("Entro por awake")
    }

    @IBAction func swJamón(value: Bool) {
        procesa(IngredientesPizza.Jamón, value: value)
    }
    
    @IBAction func swPepperoni(value: Bool) {
        procesa(IngredientesPizza.Pepperoni, value: value)
    }
    
    @IBAction func swPavo(value: Bool) {
        procesa(IngredientesPizza.Pavo, value: value)
    }
    
    @IBAction func swSalchicha(value: Bool) {
        procesa(IngredientesPizza.Salchicha, value: value)
    }
    
    @IBAction func swAceituna(value: Bool) {
        procesa(IngredientesPizza.Aceituna, value: value)
    }
    
    @IBAction func swCebolla(value: Bool) {
        procesa(IngredientesPizza.Cebolla, value: value)
}
    
    @IBAction func swPimiento(value: Bool) {
        procesa(IngredientesPizza.Pimiento, value: value)
    }
    
    @IBAction func swPiña(value: Bool) {
        procesa(IngredientesPizza.Piña, value: value)
    }
    
    @IBAction func swAnchoa(value: Bool) {
        procesa(IngredientesPizza.Anchoa, value: value)
    }
    
    func procesa(ingrediente: IngredientesPizza, value: Bool) {
        if value {
            if !pizza.ingredientes.contains(ingrediente) {
                pizza.ingredientes.append(ingrediente)
            }
        } else {
            if pizza.ingredientes.contains(ingrediente) {
                let index = pizza.ingredientes.indexOf(ingrediente)
                pizza.ingredientes.removeAtIndex(index!)
            }
        }
        if pizza.ingredientes.count < 1 || pizza.ingredientes.count > 5 {
            nextStepBtn.setEnabled(false)
        }
        else {
            nextStepBtn.setEnabled(true)
        }
    }
    
    @IBAction func nextStep() {
        pushControllerWithName("ConfirmaciónInterfaceController", context: pizza)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        //print("Pasó por willActivate")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        //print("Pizza: \(pizza.toString())")
        //print("Cambio de vista. Saliendo de Ingredientes")
        super.didDeactivate()
        
    }

}
