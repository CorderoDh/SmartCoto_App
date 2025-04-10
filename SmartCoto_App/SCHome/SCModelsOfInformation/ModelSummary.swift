//
//  ModelSummary.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 10/04/25.
//

import Foundation


class Access1: ObservableObject {
        @Published var title = "Total de accesos"
        @Published var quantity = "16"
        @Published var porcent = "+10%"
        @Published var date = "del dia de hoy"
}

class Access2: ObservableObject {
        @Published var title = "Paquetes en recepción"
        @Published var quantity = "31"
        @Published var porcent = "-5%"
        @Published var date = "del dia de hoy"
}

class Access3: ObservableObject {
        @Published var title = "Invitados"
        @Published var quantity = "4"
        @Published var porcent = "+32%"
        @Published var date = "del dia de hoy"
}

class Access4: ObservableObject {
        @Published var title = "Total de accesos"
        @Published var quantity = "16"
        @Published var porcent = "+10%"
        @Published var date = "del dia de hoy"
}

