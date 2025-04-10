//
//  ModelCombine.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 09/04/25.
//

import Foundation

class Modelo: ObservableObject {
    var title: String
    var quantity: Int
    var porcent: String
    var date: String
    
    init(title: String, quantity: Int, porcent: String, date: String) {
        self.title = title
        self.quantity = quantity
        self.porcent = porcent
        self.date = date
    }
}
