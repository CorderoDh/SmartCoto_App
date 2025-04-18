//
//  SCStructOfAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//


import SwiftUI
import Combine

class Model: ObservableObject {
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
