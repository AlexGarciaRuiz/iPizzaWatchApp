//
//  SizeInterfaceController.swift
//  iPizza
//
//  Created by AlexGarcia on 7/12/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit
import Foundation


class SizeInterfaceController: WKInterfaceController {

    @IBOutlet var pickerSize: WKInterfacePicker!
    
    var pizza = Pizza(t: 0, m: 0, q: 0, i: [])
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let i1 = WKPickerItem()
        i1.title = "Chica"
        i1.caption = "Chica"
        i1.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let i2 = WKPickerItem()
        i2.title = "Mediana"
        i2.caption = "Mediana"
        i2.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let i3 = WKPickerItem()
        i3.title = "Grande"
        i3.caption = "Grande"
        i3.accessoryImage = WKImage(imageName: "iPizza_small")
        
        let itemsArray = [i1, i2, i3]
        
        pickerSize.setItems(itemsArray)

    }

    @IBAction func nextStep() {
        pushControllerWithName("MasaInterfaceController", context: pizza)
    }
    
    
    @IBAction func valueChanged(value: Int) {
        pizza.tamaño = value
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        //print("Pizza: \(pizza.toString())")
        //print("Cambio de vista. Saliendo tamaño")
        super.didDeactivate()
    }

}
