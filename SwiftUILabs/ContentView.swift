//
//  ContentView.swift
//  SwiftUILabs
//
//  Created by IsraelTiburcio on 16/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            VStack{
                HStack{
                    Text("Tapachula")
                    Image(systemName: "location.fill")
                      
                    
                }
                Text("29°")
            
                
            }.padding()
            
            HStack{
                VStack{
                    Image(systemName: "cloud.sun.fill")
                    Text("Partly Cloudy")
                    Text("H:32° L:24°")
                }
            }
           
            
        }.foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .top, endPoint: .bottom)).cornerRadius(20)
            .frame(width: 250, height: 250)
    }
}

#Preview {
    ContentView()
}
