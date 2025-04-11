//
//  ModelSummary.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 10/04/25.
//

import SwiftUI

struct InfoCardView: View {
    @ObservedObject var model: InfoCardModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: -20) {
            Text(model.title)
                .padding()
                .frame(width: .infinity, height: 50, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            Text(model.quantity)
                .padding()
                .font(.system(size: 40, weight: .bold))
            HStack(alignment: .center, spacing: -20) {
                Text(model.porcent)
                    .padding()
                Text(model.date)
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

struct StructCardModel_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
                    InfoCardView(model: Access().model)
                    InfoCardView(model: Packages().model)
                    InfoCardView(model: Guest().model)
                    InfoCardView(model: Events().model)
        }
    }
}







