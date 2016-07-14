//
//  QuesoInterfaceController.swift
//  iPizza
//
//  Created by AlexGarcia on 7/12/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    @IBOutlet var pickerQueso: WKInterfacePicker!
    
    var pizza = Pizza(t:0, m:0, q: 0, i: [])
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
        
        //print("Pizza t:\(pizza.tamaño) m:\(pizza.masa)")
        
        let i1 = WKPickerItem()
        i1.title = "Mozarela"
        i1.caption = "Mozarela"
        i1.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let i2 = WKPickerItem()
        i2.title = "Cheddar"
        i2.caption = "Cheddar"
        i2.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let i3 = WKPickerItem()
        i3.title = "Parmesano"
        i3.caption = "Parmesano"
        i3.accessoryImage = WKImage(imageName: "iPizza_small")

        let i4 = WKPickerItem()
        i4.title = "Sin queso"
        i4.caption = "Sin queso"
        i4.accessoryImage = WKImage(imageName: "iPizza_small")

        let itemsArray = [i1, i2, i3, i4]
        
        pickerQueso.setItems(itemsArray)
        pickerQueso.setSelectedItemIndex(pizza.queso)
    }

    @IBAction func valueChanged(value: Int) {
        pizza.queso = value
    }
    
    
    @IBAction func nextStep() {
        
        pushControllerWithName("IngredientesInterfaceController", context: pizza)
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        //print("Pizza: \(pizza.toString())")
        //print("Cambio de vista. Saliendo de Queso")
        super.didDeactivate()
    }

}
