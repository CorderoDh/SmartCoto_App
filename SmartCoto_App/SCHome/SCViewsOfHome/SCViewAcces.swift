//
//  SCViewAcces.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewAcces: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 1) {
            Text("Total de accesos")
                .padding(.top, 30)
                .frame(width: 200, height: 50, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            Text("16")
                .font(.system(size: 40, weight: .bold))
                .padding(.top)
            Text("+10% de la semana pasada")
                .frame(width: 300, height: 50, alignment: .leading)
            ZStack {
                Image(systemName: "square.and.arrow.up")
                    .offset(x: 280, y: -35)
            }
        }.padding(.horizontal, 20)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 2))
    }
}

    
struct SCViewAcces_Previews: PreviewProvider {
    static var previews: some View {
        SCViewAcces()
    }
}


