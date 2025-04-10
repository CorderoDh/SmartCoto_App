//
//  SCViewAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewAcces: View {
//    @StateObject private var acces1 = Model(title: "Total de accesos", quantity: "16", porcent: "+10%", date: "de la semana pasada")
//    @StateObject private var acces2 = Model(title: "Paquetes en recepción", quantity: "32", porcent: "-5%", date: "de la semana pasada")
//    @StateObject private var acces3 = Model(title: "Invitados", quantity: "4", porcent: "+32%", date: "de la semana pasada")
//    @StateObject private var acces4 = Model(title: "Eventos", quantity: "3", porcent: "-3%", date: "de la semana pasada")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text("Total de accesos")
                .padding(.top, 30)
                .frame(width: 200, height: 50, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            Text("16")
                .font(.system(size: 40, weight: .bold))
                .padding(.top)
            HStack {
                Text("+10%")
                .frame(width: 50, height: 60, alignment: .center)
                Text("de la semana pasada")
                    .frame(width: 160, height: 10, alignment: .center)
                Image(systemName: "square.and.arrow.up")
                    .frame(width: 70, height: 50, alignment: .trailing)
            }
        }
        .padding(.horizontal, 20)
        .overlay(RoundedRectangle(cornerRadius: 15)
        .stroke(Color.gray, lineWidth: 2))
    }
}

    
struct SCViewAcces_Previews: PreviewProvider {
    static var previews: some View {
        SCViewAcces()
    }
}
