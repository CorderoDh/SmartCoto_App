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





//struct Today {
//    @State var access: Model = Model(title: "Total de accesos", quantity: 16, porcent: "+10%", date: "de hoy")
//    @State var reception: Model = Model(title: "Paquetes en recepción", quantity: 32, porcent: "-5%", date: "de hoy")
//    @State var guest: Model = Model(title: "Invitados", quantity: 4, porcent: "+32%", date: "de hoy")
//    @State var events: Model = Model(title: "Eventos", quantity: 3, porcent: "-3%", date: "de hoy")
//}

//struct Yesterday {
//    var access: Model = Model(title: "Total de accesos", quantity: 16, porcent: "+10%", date: "de ayer")
//    var reception: Model = Model(title: "Paquetes en recepción", quantity: 32, porcent: "-5%", date: "de ayer")
//    var guest: Model = Model(title: "Invitados", quantity: 4, porcent: "+32%", date: "de ayer")
//    var events: Model = Model(title: "Eventos", quantity: 3, porcent: "-3%", date: "de ayer")
//}
//
//struct ThisWeek {
//    var access: Model = Model(title: "Total de accesos", quantity: 16, porcent: "+10%", date: "de la semana")
//    var reception: Model = Model(title: "Paquetes en recepción", quantity: 32, porcent: "-5%", date: "de la semana")
//    var guest: Model = Model(title: "Invitados", quantity: 4, porcent: "+32%", date: "de la semana")
//    var events: Model = Model(title: "Eventos", quantity: 3, porcent: "-3%", date: "de la semana")
//}
//
//struct ThisMont {
//    var access: Model = Model(title: "Total de accesos", quantity: 16, porcent: "+10%", date: "del mes")
//    var reception: Model = Model(title: "Paquetes en recepción", quantity: 32, porcent: "-5%", date: "del mes")
//    var guest: Model = Model(title: "Invitados", quantity: 4, porcent: "+32%", date: "del mes")
//    var events: Model = Model(title: "Eventos", quantity: 3, porcent: "-3%", date: "del mes")
//}
//
//struct ThisYear {
//    var access: Model = Model(title: "Total de accesos", quantity: 16, porcent: "+10%", date: "del año")
//    var reception: Model = Model(title: "Paquetes en recepción", quantity: 32, porcent: "-5%", date: "del año")
//    var guest: Model = Model(title: "Invitados", quantity: 4, porcent: "+32%", date: "del año")
//    var events: Model = Model(title: "Eventos", quantity: 3, porcent: "-3%", date: "del año")
//}
