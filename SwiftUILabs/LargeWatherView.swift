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
                CityTemperatureView(city: "CDMX", temperature: "29")
                Spacer()
                SkyConditionView(cielo: "Soleado", higth: "24", Low: "9")
                
            }.padding(.horizontal)
            HStack{
                ForEach(0..<6) {_ in
                    SkyTemperatureView()
                        .frame(maxWidth: .infinity)
                }
            }
        }
            .padding()
            .background(.purple.gradient)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .shadow(radius: 10)
    }
}

    


#Preview {
    ZStack {
   
        LargeWatherView(weather: Weather(city: "CDMX",
                                         temperature: "29",
                                         cielo: "Soleado",
                                         high: "23",
                                         low: "9")
        )
    }
}


struct SkyTemperatureView: View{
    var body: some View{
        VStack(spacing:10){
            Text("10")
                .font(.footnote)
            Image(systemName: "sun.max.fill")
                .foregroundStyle(.white , .yellow)
            Text("30°")
                .bold()
        }.foregroundStyle(.white)
    }
}

