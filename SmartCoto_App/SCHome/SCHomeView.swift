//
//  SCHomeView.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCHome: View {
    @State private var selectedView: String? = "usuarios"
    
    var body: some View {
        ScrollView {
            VStack {
                
                //Bienvenida al usuario
                
                Text("Buenas noches, Cordero")
                    .padding()
                    .frame(width: 350, height: 50, alignment: .leading)
                    .font(.title)
                
                HStack(alignment: .firstTextBaseline, spacing: 50) {
                    Text("Resumen")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                        .frame(width: 150, height: 50, alignment: .leading)
                    
                    SCViewSelectedDate()
                }
                
                VStack(alignment: .center, spacing: 15) {
                    SCViewAcces()
                    SCViewAcces()
                    SCViewAcces()
                    SCViewAcces()
                    
                }.padding()
                
                Text("Acciones rapidas")
                    .padding()
                    .foregroundColor(.gray)
                    .frame(width: 360, height: 50, alignment: .leading)
                
                
                HStack(alignment: .center, spacing: 10) {
                    SCQuickActions()
                    SCQuickActions()
                    SCQuickActions()
                    SCQuickActions()
                }.padding()
                
                Text("Metricas")
                    .foregroundColor(.gray)
                    .frame(width: 330, height: 50, alignment: .leading)
                
                VStack {
                    SCViewMetrics()
                }
                
                Text("Actividad Reciente")
                    .foregroundColor(.gray)
                    .frame(width: 330, height: 50, alignment: .leading)
                
                VStack{
                    SCViewRecentActivity()
                }
                
                VStack(alignment: .center) {
                    HStack {
                        Button(action: { selectedView = "usuarios" }) {
                            Text("Usuarios")
                                .font(.system(size: 12))
                                .padding()
                                .frame(width: 150, height: 20)
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .fill(selectedView == "usuarios" ? Color.white : Color.gray))
                                .foregroundColor(.black)
                        }
                        
                        Button(action: { selectedView = "Transacciones"}) {
                            Text("Transacciones")
                                .font(.system(size: 12))
                                .padding()
                                .frame(width: 158, height: 20)
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .fill(selectedView == "Transacciones" ? Color.white : Color.gray))
                                .foregroundColor(.black)
                        }
                    }
                        .padding()
                        .frame(width: 320, height: 25)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color.gray))
                    
                    VStack(alignment: .center) {
                        if selectedView == "usuarios" {
                            SCViewUsers()
                        } else if selectedView == "Transacciones" {
                            SCViewTransactions()
                        }
                    }
                }.padding()
            }
        }
    }
}
   
    
struct SCLoginHome_Previews: PreviewProvider {
    static var previews: some View {
        SCHome()
            .preferredColorScheme(.dark)
    }
}
