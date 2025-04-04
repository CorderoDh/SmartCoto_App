//
//  prueba.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 02/04/25.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    @State var wrongUsername = 0
    @State var wrongPassword = 0
    @State var showingLoginScreen = false

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.gray, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    Image("SmartCoto_logo")
                        .resizable()
                        .scaledToFit()
                        .frame( height: 120)
                        .offset(y: -230)
                    
                    Text("Smart Coto")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 4)
                        .offset(y: -240)
                    
                    Text("Bienvenido de nuevo")
                        .font(.title2)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 4)
                        .offset(x: 0, y: -270)
                }
                
                VStack {
                    Text("Username")
                        .foregroundColor(.white)
                        .frame(width: 290, height: 20, alignment: .topLeading)
                        .font(.subheadline)
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .border(.red, width: CGFloat(wrongUsername))
                    Text("Password")
                        .foregroundColor(.white)
                        .frame(width: 290, height: 20, alignment: .topLeading)
                        .font(.subheadline)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .disableAutocorrection(true)
                        .border(.red, width: CGFloat(wrongPassword))
                    
            }
                .padding()
                .background(Color.white.opacity(0.05))
                .cornerRadius(10)
                .offset(x: 0, y: -10)
                
                Button("Login") {
                    authenticateUser(username: username, password: password)
                }
                .padding()
                .foregroundColor(.white)
                .frame(width: 330, height: 40, alignment: .center)
                .background(Color(red: 0, green: 0, blue: 100/255))
                .cornerRadius(10)
                .shadow(color: .white, radius: 5)
                .offset(y: 130)
                
                NavigationLink(destination: SCHome(), isActive: $showingLoginScreen) {
                    EmptyView()
                }
                
                VStack(alignment: .center) {
                    Text("O continúa con")
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .offset(y: 260)
                    
                    HStack {
                        Image(systemName: "applelogo")
                            .foregroundColor(Color.white)
                            .font(.system(size: 50))
                            .offset(y: 260)
                            .shadow(radius: 15)
                        
                        Image("google")
                            .offset(x: 0, y: 265)
                            .shadow(radius: 15)
                        
                        Image("facebook")
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .offset(y: 265)
                            .shadow(radius: 15)
                    }
                    
                    HStack {
                        Text("¿No tienes una cuenta?")
                            .offset(y: 270)
                            .foregroundColor(Color.white)
                            .font(.subheadline)
                            .shadow(radius: 15)
                        
                        Text("Registrarse")
                            .font(.headline)
                            .foregroundColor(Color.init(red: 0/0, green: 0/0, blue: 120/255))
                            .offset(y: 270)
                            .shadow(radius: 30)
                    }
                    
                    Text("Al continuar, aceptas nuestros Términos de servicio y Política de privacidad.")
                        .offset(x: 0, y: 280)
                        .foregroundColor(Color.white)
                        .padding()
                        .font(.system(size: 10))
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "cordero" {
            wrongUsername = 0
            if password == "123456" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct PruebaView_Preview: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
