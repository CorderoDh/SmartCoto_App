//
//  SCStructOfAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import Foundation
import Combine

struct AccessCardModel: Identifiable {
    let id = UUID()
    let title: String
    let numberOfTag: String
    let porcent: String
    let date: String
    
    class AccessCardsViewModel: ObservableObject {
        @Published var cards: [AccessCardModel] = [
            AccessCardModel(title: "Paquetes en recepción", numberOfTag: "32", porcent: "-5%", date: "de la semana pasada"),
            AccessCardModel(title: "Paquetes en recepción", numberOfTag: "32", porcent: "-5%", date: "de la semana pasada"),
            AccessCardModel(title: "Invitados", numberOfTag: "4", porcent: "+32%", date: "de la semana pasada"),
            AccessCardModel(title: "Eventos", numberOfTag: "3", porcent: "-3%", date: "de la semana pasada")
        ]
    }
    
}












    
//
//    @StateObject private var acces2 = ModelOfAcces(
//        title: "Paquetes en recepción",
//        numberOfTag: "32",
//        porcent: "-5%",
//        date: "de la semana pasada"
//    )
//
//    @StateObject private var acces3 = ModelOfAcces(
//        title: "Invitados",
//        numberOfTag: "4",
//        porcent: "+32%",
//        date: "de la semana pasada"
//    )
//
//    @StateObject private var acces4 = ModelOfAcces(
//        title: "Eventos",
//        numberOfTag: "3",
//        porcent: "-3%",
//        date: "de la semana pasada"
//    )
