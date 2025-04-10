//
//  ModelCards.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 08/04/25.
//

import SwiftUI

struct ModelAcces: View {
    @ObservedObject var access1 = Access1()
    
    var body: some View {
        VStack(alignment: .leading, spacing: -20) {
            Text(access1.title)
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            Text(access1.quantity)
                .padding()
                .font(.system(size: 40, weight: .bold))
            HStack(alignment: .center, spacing: -20) {
                Text(access1.porcent)
                    .padding()
                Text(access1.date)
                    .padding()
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .padding()
            }
        }
        .frame(width: 330, height: 160, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 15)
        .stroke(Color.gray, lineWidth: 2))
    }
}

struct ModelPackages: View {
    @ObservedObject var access1 = Access1()
    
    var body: some View {
        VStack(alignment: .leading, spacing: -20) {
            Text(access1.title)
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            Text(access1.quantity)
                .padding()
                .font(.system(size: 40, weight: .bold))
            HStack(alignment: .center, spacing: -20) {
                Text(access1.porcent)
                    .padding()
                Text(access1.date)
                    .padding()
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .padding()
            }
        }
        .frame(width: 330, height: 160, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 15)
        .stroke(Color.gray, lineWidth: 2))
    }
}

struct SModelCards_Previews: PreviewProvider {
    static var previews: some View {
        ModelAcces()
    }
}


