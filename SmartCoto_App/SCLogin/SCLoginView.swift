//
//  SCLoginView.swift
//  SmartCoto_App
//
//  Created by Carlos Miguel on 01/04/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    

    var body: some View {

        ZStack {

            LinearGradient(
                gradient: Gradient(colors: [Color.gray, Color.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack {

                Image("SmartCoto_logo")
                    .resizable()
                    .scaledToFit()
                    .frame( height: 120)
                    .padding(.top, -350)
            }

            VStack {

                Text("Smart Coto")
                    .padding(.bottom)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 4)
                    .offset(x: 0, y: -150)

                Text("Bienvenido de nuevo")
                    .font(.title2)
                    .foregroundColor(.white)
                    .offset(x: 0, y: -170)
            }

            ZStack {

                Color.white.opacity(0.1)
                    .cornerRadius(15)
                    .frame(width: 340, height: 200)
                    .offset(x: 0, y: -10)

                VStack {

                    Text("Email")
                        .foregroundColor(.white)
                        .frame(width: 310, height: 10, alignment: .topLeading)
                        .font(.subheadline)

                    TextField("jorge23@example.com", text: $email)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(10)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)

                    Text("contraseña")
                        .foregroundColor(.white)
                        .frame(width: 310, height: 10, alignment: .topLeading)
                        .font(.subheadline)


                    SecureField("Password", text: $password)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(10)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)

                    Text("¿Olvidaste tu contraseña?")
                        .font(.subheadline)
                        .foregroundColor(Color.black)
                        .frame(width: 310, height: 10, alignment: .topTrailing)
                        .padding(.bottom, 30)
                }
            }

            VStack {

                Button(action: {
                    print("Boton presionado")

                }) {

                    Text("Iniciar sesión")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 100)
                        .background(Color(red: 0/255, green: 0/255, blue: 100/255))
                        .cornerRadius(10)
                        .shadow(color: .white, radius: 5)
                        .offset(x: 0, y: 130)
                }
            }

                    Text("O continúa con")
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: 180)

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
                    .offset(x: 0, y: 280)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                    .shadow(radius: 15)

                Button(action: {
                    print("Creara una cuenta")
                }) {

                    Text("Registrarse")
                        .font(.headline)
                        .foregroundColor(Color.init(red: 0/0, green: 0/0, blue: 120/255))
                        .offset(x: 0, y: 280)
                        .shadow(radius: 30)

                }
            }

            Text("Al continuar, aceptas nuestros Términos de servicio y Política de privacidad.")
                .offset(x: 0, y: 340)
                .foregroundColor(Color.white)
                .padding()
                .font(.system(size: 10))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


