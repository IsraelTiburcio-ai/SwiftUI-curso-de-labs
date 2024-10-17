//
//  Weatherao.swift
//  SwiftUILabs
//
//  Created by IsraelTiburcio on 16/10/24.
//

import SwiftUI

struct Weather{
    let city: String
    let temperature: String
    let cielo: String
    let high: String
    let low: String
}

struct CompactWeatherView: View {
    
    let weather : Weather
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            CityTemperatureView(city: weather.city, temperature: weather.temperature)
            SkyConditionView(cielo: weather.cielo, higth: weather.high, Low: weather.low)
            
        }.padding()
            .padding(.trailing,40)
            .background(.blue.gradient)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .shadow(radius: 10)
        
        
        
    }
}

#Preview {
    ZStack {
        
        CompactWeatherView(weather: Weather(city: "CDMX",
                                            temperature: "29",
                                            cielo: "Soleado",
                                            high: "23",
                                            low: "9")
        )
    }
}

struct CityTemperatureView: View {
    
    var city: String
    var temperature: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(city)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Image(systemName: "location.fill")
                
            }
            Text("\(temperature)°")
                .font(.title)
                .fontWeight(.semibold)
        }.foregroundColor(.white)
    }
}

struct SkyConditionView: View {
    var cielo: String
    var higth: String
    var Low: String
    
    var conditionImage: String{
        switch cielo {
        case "Soleado":
            return "sun.max.fill"
        case "Nublado":
            return "cloud.rain.fill"
        default:
            return "cloud.fill"
        }
        
        
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(systemName: conditionImage)
                .foregroundStyle(.white, .yellow)
            
            
            Text(cielo)
                .font(.body)
                .fontWeight(.medium)
            
            Text("H:\(higth)° L:\(Low)°")
                .font(.body)
                .fontWeight(.medium)
            
        }.foregroundStyle(.white)
    }
}
