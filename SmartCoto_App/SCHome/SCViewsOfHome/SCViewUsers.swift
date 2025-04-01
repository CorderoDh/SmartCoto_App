//
//  SCViewUsers.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewUsers: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text("Lista de todos los usuarios en tu cuenta, incluyendo su nombre, cargo, correo electrónico y rol.")
                    .padding()
                    .frame(width: 310, height: 80, alignment: .center)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                Text("Agregar usuario")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 10)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.init(red: 0, green: 2, blue: 5)))
                    .offset(x: 80, y: 10)
                    .font(.system(size: 12))
            }
            
            ScrollView(.horizontal) {
                HStack {
                    Text("Nombre")
                        .padding()
                        .font(.system(size: 12))
                        .offset(x: -150, y: 10)
                    Text("Cargo")
                        .padding()
                        .font(.system(size: 12))
                        .offset(y: 10)
                    Text("Estado")
                        .padding()
                        .font(.system(size: 12))
                        .offset(x: 30, y: 10)
                    Text("Rol")
                        .padding()
                        .font(.system(size: 12))
                        .offset(x: 55, y: 10)
                }
                
                VStack(alignment: .center) {
                    
                    SCViewUsersInfo()
                    SCViewUsersInfo()
                    SCViewUsersInfo()
                    SCViewUsersInfo()
                    SCViewUsersInfo()
                    SCViewUsersInfo()
                }
            }
        }.padding()
            .frame(width: 330, height: .infinity, alignment: .center)
            .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray))
    }
}


struct SCViewUsers_Preview: PreviewProvider {
    static var previews: some View {
        SCViewUsers()
    }
}

