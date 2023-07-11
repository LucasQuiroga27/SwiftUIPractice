//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Lucas Quiroga on 10/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView().ignoresSafeArea(edges: .top).frame(height: 300)
            
            CircleImage().offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Paisajes de Lima")
                    .font(.title)
                HStack {
                    Text("Costa verde")
                        .font(.subheadline)
                    Spacer()
                    Text("Lima")
                        .font(.subheadline)
                }
                Divider()
                Text("Un Paraíso Costero en Lima, Perú:")
                    .font(.title2)
                    .padding(.bottom, 3)
                Text("La Costa Verde en Lima, Perú, es una impresionante franja costera con playas, acantilados y vistas al mar. Es famosa por sus actividades al aire libre, vida nocturna y distritos como Miraflores, Barranco y Chorrillos.")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                
            }
            .padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
