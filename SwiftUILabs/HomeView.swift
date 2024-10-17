//
//  HomeView.swift
//  SwiftUILabs
//
//  Created by IsraelTiburcio on 16/10/24.
//

import SwiftUI

struct HomeView: View {
    let weather = Weather(city: "CDMX",
                          temperature: "29",
                          cielo: "Soleado",
                          high: "23",
                          low: "9")
    
    var body: some View {
        VStack{
            WeatherApp(weather: weather)
            LargeWatherView(weather: weather)
            
        }
    }
}

#Preview {
    HomeView()
}
