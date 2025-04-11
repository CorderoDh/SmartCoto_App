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

struct Access {
    let model = InfoCardModel(title: "Total de accesos", quantity: "16", porcent: "+10%", date: "del día de hoy")
}

struct Packages {
    let model = InfoCardModel(title: "Paquetes en recepción", quantity: "31", porcent: "-5%", date: "del día de hoy")
}

struct Guest {
    let model = InfoCardModel(title: "Invitados", quantity: "4", porcent: "+32%", date: "del día de hoy")
}

struct Events {
    let model = InfoCardModel(title: "Eventos", quantity: "3", porcent: "+18%", date: "del día de hoy")
}
