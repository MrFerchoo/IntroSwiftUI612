//
//  ContentView.swift
//  IntroSwiftUI612
//
//  Created by ISSC_612_2023 on 27/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var numero1 = ""
    @State var numero2 = ""
    @State var suma = 0

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple , .red, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("SwiftUI Content")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(30)
                
                Text("Valor 1").font(.system(size: 32))
                
                TextField("suma",text: $numero1)
                    .background(Color .black.opacity(0.5))
                    .font(.system(size: 32))
                    .border(Color.black)
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                
                Text("Resultado: \(suma)")
                    .font(.system(size: 32))
                
                Button(action:{
                    print("clic")
                    suma += Int(numero1)!
                }){
                    Text("Calcular")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(30)
                        .font(.system(size: 32))
                }.buttonStyle(FilledButtonExample())
            }
        }
    }
}

struct FilledButtonExample:ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.background(configuration.isPressed ? LinearGradient(gradient: Gradient(colors: [.purple , .red, .yellow]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [.yellow , .red, .purple]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(Color .white.opacity(0.5))
            .padding()
            .cornerRadius(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
