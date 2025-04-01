//
//  SCViewTransactionsInfo.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewTransactionsInfo: View {
    var body: some View {
        
        VStack {
            
            HStack(spacing: 60){
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text("$7,600.00 USD")
                        .font(.system(size: 12))
                        .lineLimit(1)
                    
                    Text("$500.00 tax")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
//                .padding(.horizontal, -70)
                
                VStack(alignment: .center) {
                    
                    Text("Pagado")
                        .font(.system(size: 12))
                        .foregroundColor(Color.init(red: 0, green: 100, blue: 0))
                        .padding(.vertical, 5)
                        .padding(.horizontal, 5)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.green))
                }
//                .padding(.horizontal, 50)
                
                
                VStack(alignment: .trailing, spacing: 5) {
                    
                    Text("Ver")
                        .padding(.vertical, 5)
                        .font(.system(size: 14))
                        .foregroundColor(Color.init(red: 0, green: 10, blue: 5))
                    
                    Text("Factura")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    
                    Text("#00012")
                        .font(.system(size: 10))
                }
            }
            Divider()
                .background(Color.gray)
        }
    }
}

struct SCViewTransactionsInfo_Proview: PreviewProvider {
    static var previews: some View {
        SCViewTransactionsInfo()
    }
}
