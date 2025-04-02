//
//  SCLoginView.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
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
                        .offset(y: -270)
                    
                    Text("Smart Coto")
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 4)
                        .offset(y: -280)
                    
                    Text("Bienvenido de nuevo")
                        .font(.title2)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 4)
                        .offset(x: 0, y: -300)
                }
                
                VStack {
                    Text("Username")
                        .foregroundColor(.white)
                        .frame(width: 290, height: 20, alignment: .topLeading)
                        .font(.subheadline)
                    
                    
                    TextField("username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    
                    Text("Password")
                        .foregroundColor(.white)
                        .frame(width: 290, height: 20, alignment: .topLeading)
                        .font(.subheadline)
                    
                    
                    SecureField("password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Text("¿Olvidaste tu contraseña?")
                        .foregroundColor(.black)
                        .frame(width: 290, height: 20, alignment: .topTrailing)
                        .font(.subheadline)
                    
                    
                }
                .padding()
                .background(Color.white.opacity(0.05))
                .cornerRadius(10)
                .offset(x: 0, y: -55)
                
                Button("Login") {
                    // Authenicate user
                    
                }
                .padding()
                .foregroundColor(.white)
                .frame(width: 330, height: 40, alignment: .center)
                .background(Color(red: 0/255, green: 0/255, blue: 100/255))
                .cornerRadius(10)
                .shadow(color: .white, radius: 5)
                .offset(y: 90)
                
                NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                    EmptyView()
                }
                
                
                
                VStack(alignment: .center) {
                    
                    Text("O continúa con")
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: 220)
                    
                    HStack {
                        
                        Image(systemName: "applelogo")
                            .foregroundColor(Color.white)
                            .font(.system(size: 50))
                            .offset(x: 0, y: 220)
                            .shadow(radius: 15)
                        
                        Image("google")
                            .offset(x: 0, y: 225)
                            .shadow(radius: 15)
                        
                        Image("facebook")
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .offset(x: 0, y: 225)
                            .shadow(radius: 15)
                    }
                    
                    HStack {
                        Text("¿No tienes una cuenta?")
                            .offset(x: 0, y: 230)
                            .foregroundColor(Color.white)
                            .font(.subheadline)
                            .shadow(radius: 15)
                        
                        Text("Registrarse")
                            .font(.headline)
                            .foregroundColor(Color.init(red: 0/0, green: 0/0, blue: 120/255))
                            .offset(x: 0, y: 230)
                            .shadow(radius: 30)
                    }
                    
                    Text("Al continuar, aceptas nuestros Términos de servicio y Política de privacidad.")
                        .offset(x: 0, y: 230)
                        .foregroundColor(Color.white)
                        .padding()
                        .font(.system(size: 10))
                }
            }.navigationBarHidden(true)
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


