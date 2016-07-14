//
//  Modelo.swift
//  iPizza
//
//  Created by AlexGarcia on 7/12/16.
//  Copyright © 2016 AlexGarcia. All rights reserved.
//

import WatchKit

enum IngredientesPizza : Int{
    case Jamón, Pepperoni, Pavo, Salchicha, Aceituna, Cebolla, Pimiento, Piña, Anchoa
}

enum TamañoPizza : Int {
    case noTamaño = -1, Chica, Mediana, Grande
    
    init() {
        self = .noTamaño
    }
}

enum MasaPizza : Int {
    case noMasa = -1, Delgada, Crujiente, Gruesa
    
    init(){
        self = .noMasa
    }
}

enum QuesoPizza : Int {
    case noQueso = -1, Mozarela, Cheddar, Parmesano, SinQueso
    
    init() {
        self = .noQueso
    }
}


class Pizza: NSObject {

    var tamaño: Int = -1
    var masa: Int = -1
    var queso: Int = -1
    var ingredientes: [IngredientesPizza] = []
    
    init(t: Int, m: Int, q: Int, i: [IngredientesPizza])
    {
        tamaño = t
        masa = m
        queso = q
        ingredientes = i
    }
    
    func toString() -> String {
        var i = ""
        for ingrediente in ingredientes {
            i += "\(ingrediente) "
        }
        return "t: \(tamaño) m: \(masa) q: \(queso) i: \(i)"
    }
}
