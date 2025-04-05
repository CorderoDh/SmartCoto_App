//
//  SCModelOfAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import Combine

class Model: ObservableObject {
    var title: String
    var numberOfTag: String
    var porcent: String
    var date: String
    
    init(title: String, numberOfTag: String, porcent: String, date: String) {
        self.title = title
        self.numberOfTag = numberOfTag
        self.porcent = porcent
        self.date = date
    }
    
    @Published var acces1 = Model(
        title: "Paquetes en recepción",
        numberOfTag: "32",
        porcent: "-5%",
        date: "de la semana pasada"
    )
    
    @Published var acces2 = Model(
        title: "Paquetes en recepción",
        numberOfTag: "32",
        porcent: "-5%",
        date: "de la semana pasada"
    )
    
    @Published var acces3 = Model(
        title: "Invitados",
        numberOfTag: "4",
        porcent: "+32%",
        date: "de la semana pasada"
    )
    
    @Published var acces4 = Model(
        title: "Eventos",
        numberOfTag: "3",
        porcent: "-3%",
        date: "de la semana pasada"
    )
}



