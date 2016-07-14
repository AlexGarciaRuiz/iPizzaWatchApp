//
//  MasaInterfaceController.swift
//  iPizza
//
//  Created by AlexGarcia on 7/12/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    
    @IBOutlet var pickerMasa: WKInterfacePicker!
    
    var pizza = Pizza(t:0, m:0, q: 0, i: [])
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
        
        //print("Tamaño de pizza: \(pizza.tamaño)")
        let i1 = WKPickerItem()
        i1.title = "Delgada"
        i1.caption = "Delgada"
        i1.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let i2 = WKPickerItem()
        i2.title = "Crujiente"
        i2.caption = "Crujiente"
        i2.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let i3 = WKPickerItem()
        i3.title = "Gruesa"
        i3.caption = "Gruesa"
        i3.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let itemsArray = [i1, i2, i3]
        
        pickerMasa.setItems(itemsArray)
        pickerMasa.setSelectedItemIndex(pizza.masa)
    }

    @IBAction func valueChanged(value: Int) {
        pizza.masa = value
    }
    
    @IBAction func nextStep() {

        pushControllerWithName("QuesoInterfaceController", context: pizza)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        //print("Pizza: \(pizza.toString())")
        //print("Cambio de vista. Saliendo de Masa")
        super.didDeactivate()
    }

}
