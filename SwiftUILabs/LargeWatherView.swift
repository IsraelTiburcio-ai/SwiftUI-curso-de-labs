//
//  LargeWatherView.swift
//  SwiftUILabs
//
//  Created by IsraelTiburcio on 16/10/24.
//

import SwiftUI

struct LargeWatherView: View {
    
    let weather : Weather
    
    var body: some View {
        VStack(spacing: 10){
            HStack{
                CityTemperatureView(city: "CDMX", temperature: "29°")
                Spacer()
                SkyConditionView(cielo: "Soleado", higth: "24", Low: "9")
                
            }
            HStack(spacing: 40){
                ForEach(0..<6) {_ in
                    SkyTemperatureView()
                }
            }
        }
    }
}

    


#Preview {
    LargeWatherView(weather: Weather(city: "CDMX",
                                     temperature: "29",
                                     cielo: "Soleado",
                                     high: "23",
                                     low: "9")
               )
}


struct SkyTemperatureView: View{
    var body: some View{
        VStack(spacing:10){
            Text("10")
            Image(systemName: "cloud.sun.fill")
            Text("30°")
        }
    }
}

