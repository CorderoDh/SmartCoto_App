//
//  SCViewMetrics.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewMetrics: View {
    var body: some View {
        VStack {
            
            Text("Gráfico de área - Afluencia por condominio")
                .padding(.top, 10)
                .frame(alignment: .leading)
            Text("Mostrando el total de visitantes para los últimos 6 meses")
                .frame(width: 320, height: 50, alignment: .leading)
                .foregroundColor(.gray)
            Rectangle()
                .frame(width: 250, height: 150, alignment: .center)
                .padding()
                .opacity(0.5)
                .foregroundColor(Color.black)
            HStack {
                Text("Aumento de 5.2% este mes")
                Image(systemName: "chart.line.uptrend.xyaxis")
            }
            Text("Enero - Junio 2024")
        }.padding(.horizontal, 5)
            .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1))
    }
}

struct SCViewMetrics_Preview: PreviewProvider {
    static var previews: some View {
        SCViewMetrics()
    }
}


