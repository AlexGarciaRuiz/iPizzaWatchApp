//
//  FinishInterfaceController.swift
//  iPizza
//
//  Created by AlexGarcia on 7/13/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit
import Foundation


class FinishInterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func goHome() {
        popToRootController()
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
