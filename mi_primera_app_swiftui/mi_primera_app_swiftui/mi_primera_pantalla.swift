//
//  mi_primera_pantalla.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 2/24/25.
//

import SwiftUI

struct MiPrimeraPantalla: View {
    var body: some View{
        Spacer()
        
        CampoSencillo()
            .background(Color.blue)
        CampoSencillo()
            .background(Color.yellow)
        CampoSencillo()
        
        Spacer()
    }
    
    struct CampoSencillo: View{
        @State private var texto = ""
        
        var body: some View {
            Spacer()
            Text("Hola \(texto)")
            Spacer()
            
            TextField("Place Holder", text: $texto)
            
            Spacer()
            
          /* /  Button("Texto x aqui") {
              
                //en esta parte ejecutamos codigo
            }
           */
        
            Button(action: {
                texto = ""
            }){
                Image(systemName: "heart.square.fill")
                    .imageScale(.large)
                    .tint(.purple)
            }
                .background(Color.yellow)
            
            Spacer()
            
        }
    }

    }
    
#Preview{
    MiPrimeraPantalla()
}
