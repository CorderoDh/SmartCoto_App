//
//  SCViewTransactions.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewTransactions: View {
    var body: some View {
        
        VStack {
            
            Text("Lista de todas las transacciones en tu cuenta, incluyendo su fecha, monto y estado.")
                .font(.system(size: 12))
                .foregroundColor(.gray)
            
            Spacer()
            
            VStack {
                
                // ---- SECCIÓN "HOY" ----
                VStack {
                    Text("Hoy")
                        .padding()
                        .frame(width: 330, height: 30, alignment: .leading)
                        .font(.system(size: 12))
                        .overlay(
                            VStack {
                                Divider() // Línea superior
                                    .frame(width: 300, height: 1)
                                    .background(Color.white)
                                Spacer()
                                Divider() // Línea inferior
                                    .frame(width: 300, height: 1)
                                    .background(Color.gray.opacity(0.5))
                            }
                        )
                    
                    SCViewTransactionsInfo()
                    SCViewTransactionsInfo()
                    SCViewTransactionsInfo()
                }
                
                // ---- SECCIÓN "AYER" ----
                VStack {
                    Text("Ayer")
                        .padding()
                        .offset(y: -5)
                        .frame(width: 330, height: 20, alignment: .leading)
                        .font(.system(size: 12))
                        .overlay(
                            Divider()
                                .frame(width: 300, height: 1)
                                .background(Color.gray.opacity(0.5))
                                .offset(y: 10)
                        )
                    
                    SCViewTransactionsInfo()
                }
            }
        }
        .padding()
        .frame(width: 330, height: 460, alignment: .center)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray)
        )
    }
}

    


struct SCViewTransactions_Proview: PreviewProvider {
    static var previews: some View {
        SCViewTransactions()
    }
}
