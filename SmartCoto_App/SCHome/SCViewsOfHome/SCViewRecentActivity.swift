//
//  SCViewRecentActivity.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct SCViewRecentActivity: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 5) {
            VStack(alignment: .leading, spacing: 100) {
                ZStack {
                    Divider()
                            .frame(width: 1, height: 90)
                            .background(Color.gray)
                            .offset(x: 10, y: -140)
                    Divider()
                            .frame(width: 1, height: 40)
                            .background(Color.gray)
                            .offset(x: 10, y: -45)
                    Divider()
                            .frame(width: 1, height: 70)
                            .background(Color.gray)
                            .offset(x: 10, y: 45)
                    
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .offset(x: 10, y: -205)
                    
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .clipShape(Circle())
                        .offset(x: 10, y: -80)

                    Image(systemName: "tag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .offset(x: 10, y: -10)

                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .offset(x: 10, y: 100)
                }
            }
            
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
                    Text("Eduardo Benz")
                        .font(.system(size: 10))
                    Text("comento hace 6d")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt nunc ipsum tempor purus vitae id. Morbi in vestibulum nec varius. Et diam cursus quis sed purus nam.")
                        .padding(.top, 5)
                        .frame(maxWidth: .infinity)
                        .fixedSize(horizontal: false, vertical: false)
                        .font(.system(size: 11))
                        
                }.padding()
                
                VStack(alignment: .leading) {
                    Text("Hilary Mahy asigno a Kristin Watson")
                        .font(.system(size: 10))
                    Text("hace 2d")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }.padding()
                
                VStack(alignment: .leading) {
                    Text("Hilary Mahy agregó etiquetas")
                        .font(.system(size: 10))
                    HStack {
                        Text("Error")
                            .font(.system(size: 10))
                            .padding(.top, 1)
                            .padding(.init(5))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init(red: 0, green: 2, blue: 5)))
                            
                        Text("accesibilidad")
                            .font(.system(size: 10))
                            .padding(.top, 1)
                            .padding(.init(5))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init(red: 0, green: 2, blue: 5)))
                    }
                    Text("hace 6h")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }.padding()
                
                VStack(alignment: .leading) {
                    Text("Jason Mayers")
                        .font(.system(size: 10))
                    Text("comento hace 2h")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt nunc ipsum tempor purus vitae id. Morbi in vestibulum nec varius. Et diam cursus quis sed purus nam. Scelerisque amet elit non sit ut tincidunt condimentum. Nisl ultrices eu venenatis diam.")
                        .font(.system(size: 10))
                        .padding(.top, 5)
                        .frame(maxWidth: .infinity)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }.padding()
            }
        }
        .frame(width: 300, height: 430, alignment: .center)
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
    }
}

struct SCViewRecentActivity_Preview: PreviewProvider {
    static var previews: some View {
        SCViewRecentActivity()
    }
}

