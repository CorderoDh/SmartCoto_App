//
//  SCViewSelectedDate.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewSelectedDate: View {
    var body: some View {

        VStack(alignment: .center, spacing: 10) {
            Text("Fecha")
        }.padding()
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 2))
    }
}


struct SCViewSelectedDate_Previews: PreviewProvider {
    static var previews: some View {
        SCViewSelectedDate()
    }
}





//import SwiftUI
//
//struct DateRangeSelector: View {
//    @State private var selectedOption: String = "Hoy" // Opción seleccionada
//
//    var body: some View {
//        Menu {
//            Button("Hoy") { selectedOption = "Hoy" }
//            Button("Ayer") { selectedOption = "Ayer" }
//            Button("Esta semana") { selectedOption = "Esta semana" }
//            Button("Este mes") { selectedOption = "Este mes" }
//            Button("Este año") { selectedOption = "Este año" }
//        } label: {
//            HStack {
//                Text(selectedOption) // Muestra la opción seleccionada
//                    .foregroundColor(.white)
//                Image(systemName: "chevron.down") // Icono de desplegable
//                    .foregroundColor(.white)
//            }
//            .padding()
//            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray)) // Borde con esquinas redondeadas
//        }
//    }
//}
//
//struct DateRangeSelector_Previews: PreviewProvider {
//    static var previews: some View {
//        DateRangeSelector()
//            .preferredColorScheme(.dark) // Modo oscuro
//    }
//}
//

