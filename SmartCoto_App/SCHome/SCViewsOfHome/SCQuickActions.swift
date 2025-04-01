//
//  SCQuickActions.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCQuickActions: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            Image(systemName: "creditcard.fill")
                .font(.system(size: 20))
                .frame(height: 10, alignment: .center)
            Text("Pagos")
                .font(.system(size: 15, weight: .bold))
                .frame(width: 75, alignment: .center)
        }.padding(.vertical, 30)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 1))
    }
}

    
struct SCQuickActions_Previews: PreviewProvider {
    static var previews: some View {
        SCQuickActions()
    }
}

