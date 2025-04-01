//
//  SCModelOfAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI
import Combine

class ModelOfAcces: ObservableObject {
    @Published var title: String
    @Published var numberOfTag: String
    @Published var porcent: String
    @Published var date: String
    
    init(title: String, numberOfTag: String, porcent: String, date: String) {
        self.title = title
        self.numberOfTag = numberOfTag
        self.porcent = porcent
        self.date = date
    }
}



