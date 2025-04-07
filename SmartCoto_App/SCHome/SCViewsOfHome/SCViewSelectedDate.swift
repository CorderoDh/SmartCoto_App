//
//  SCViewSelectedDate.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewSelectedDate: View {
    enum DateFilter: String, CaseIterable, Identifiable {
        
        case hoy = "Hoy"
        case ayer = "Ayer"
        case estaSemana = "Esta semana"
        case EsteMes = "Este mes"
        case EsteAno = "Este año"
        
        var id: String { self.rawValue }
    }
    
    @State private var showDateOptions = false
    @State private var selectedFilter: DateFilter = .hoy
    
    var body: some View {
        VStack(alignment: .center) {
            Button(action: {
                withAnimation {
                    showDateOptions.toggle()
                }
            }) {
                HStack {
                    Text("\(selectedFilter.rawValue)")
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 10, alignment: .leading)
                    Image(systemName: showDateOptions ? "chevron.up" : "chevron.down")
                        .frame(width: 50, height: 10, alignment: .trailing)
                }
            }
            VStack {
                if showDateOptions {
                    ForEach(DateFilter.allCases) { filter in Button(action: {
                        selectedFilter = filter
                        showDateOptions = false
                    }) {
                        Text(filter.rawValue)
                    }
                    }
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
    }
}

struct SCViewSelectedDate_Previews: PreviewProvider {
    static var previews: some View {
        SCViewSelectedDate()
            .preferredColorScheme(.dark) // Modo oscuro
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

