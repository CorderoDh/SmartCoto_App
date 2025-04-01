//
//  SCViewUsersInfo.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewUsersInfo: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            VStack(alignment: .center) {
                Divider()
                    .frame(width: 600, height: 1)
                    .background(Color.gray)
            }
            
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Lindsay Walton")
                        .padding(.top, 1)
                        .font(.system(size: 10))
                    
                    Text("lindsay.walton@example.com")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
                
                VStack(alignment: .trailing, spacing: 5) {
                    Text("Front-end Developer")
                        .font(.system(size: 10))
                        .offset(x: 20, y: 0)
                    
                    Text("Optimización")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
                
                
                Text("Activo")
                    .font(.system(size: 10))
                    .padding(.leading, 50)
                
                Text("Miembro")
                    .font(.system(size: 10))
                    .padding(.leading, 50)
                    .foregroundColor(.gray)
                
                Text("Editar")
                    .font(.system(size: 10))
                    .padding(.leading, 50)
                    .foregroundColor(Color.init(red: 0, green: 10, blue: 5))
                
            }
        }
    }
}



struct SCViewUsersInfo_Previews: PreviewProvider {
    static var previews: some View {
        SCViewUsersInfo()
    }
}
