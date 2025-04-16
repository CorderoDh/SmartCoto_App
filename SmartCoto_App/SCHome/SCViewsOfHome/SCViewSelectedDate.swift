//
//  SCViewSelectedDate.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewSelectedDate: View {
    
    var body: some View {
        
        NavigationView {
            Text("Date")
            .toolbar {
                ToolbarItem(){
                    Menu("Fecha") {
                        Section {
                            Button("Hoy") {
                                print("Este dia seleccionado")
                            }
                            Button("Ayer") {
                                print("Ayer seleccionado")
                            }
                            Button("Esta semana") {
                                print("Esta semana seleccionado")
                            }
                            Button("Este mes") {
                                print("Este mes seleccionado")
                            }
                            Button("Este año") {
                                print("Este año seleccionado")
                            }
                        }
                    }
//                    .overlay(RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.gray, lineWidth: 2))
//                    .frame(width: 100, height: 30, alignment: .center)
                }
            }
        }
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

