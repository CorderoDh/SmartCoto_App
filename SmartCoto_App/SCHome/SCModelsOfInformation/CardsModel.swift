//
//  ModelSummary.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 10/04/25.
//

struct ViewModel: View {
    @ObservedObject var model: InfoModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: -20) {
            Text(model.title)
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            Text(model.quantity)
                .padding()
                .font(.system(size: 40, weight: .bold))
            HStack(alignment: .center, spacing: -20) {
                Text(model.porcent)
                    .padding()
                Text(model.date)
                    .padding()
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .padding()
            }
        }
        .frame(width: 330, height: 160, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 15)
        .stroke(Color.gray, lineWidth: 2))
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ModelAcces()
    }
}










import Foundation
import SwiftUI


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

