//
//  SCViewSelectedDate.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewSelectedDate: View {
    @State private var isDropdownVisible = false
    @State private var selectedOption = "Fecha"
    
    let options = ["Hoy", "Ayer", "Esta semana", "Este mes", "Este año"]
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Button(action: {
                withAnimation {
                    isDropdownVisible.toggle()
                }
            }) {
                HStack {
                    Text(selectedOption)
                        .font(.system(size: 12))
                    Spacer()
                    Image(systemName: isDropdownVisible ? "chevron.up" : "chevron.down")
                        .foregroundColor(.gray)
                }
                .frame(width: 100, height: 1, alignment: .leading)
            }
            
            if isDropdownVisible {
                VStack(spacing: 5) {
                    ForEach(options, id: \.self) { option in
                        Button(action: {
                            selectedOption = option
                            withAnimation {
                                isDropdownVisible = false
                            }
                        }) {
                            Text(option)
                                .frame(width: 100, height: 15, alignment: .center)
                                .font(.system(size: 12))
                        }
                        .foregroundColor(.black)
                    }
                }
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black, lineWidth: 1)
        )
        .padding()
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

