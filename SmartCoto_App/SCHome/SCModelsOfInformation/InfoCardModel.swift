//
//  SCStructOfAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//


import SwiftUI
import Combine
import SwiftUI

class InfoCardModel: ObservableObject {
    @Published var title: String
    @Published var quantity: String
    @Published var porcent: String
    @Published var date: String
    
    init(title: String, quantity: String, porcent: String, date: String) {
        self.title = title
        self.quantity = quantity
        self.porcent = porcent
        self.date = date
    }
}

class Access: ObservedObject {
    var title = "Total de acceesos"
    var quantity = "16"
    var porcent = "+10%"
    var date = "del dia de hoy"
}

class Packages: ObservableObject {
    var title = "Paquetes en recepción"
    var quantity = "31"
    var porcent = "-5%"
    var date = "del dia de hoy"
}

class Guest: ObservableObject {
    var title = "Invitados"
    var quantity = "4"
    var porcent = "+32%"
    var date = "del dia de hoy"
}

class Events: ObservableObject {
    var title = "Total de accesos"
    var quantity = "16"
    var porcent = "+10%"
    var date = "del dia de hoy"
}
