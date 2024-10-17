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

struct WeatherApp: View {
    
    let weather : Weather
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            CityTemperatureView(city: "CDMX", temperature: "29°")
            SkyConditionView(cielo: "Soleado", higth: "24", Low: "9")
            
        }
        
        VStack(spacing:10){
            Text("10")
            Image(systemName: "cloud.sun.fill")
            Text("30°")
        }
        
    }
}

#Preview {
    WeatherApp(weather: Weather(city: "CDMX",
                                temperature: "29",
                                cielo: "Soleado",
                                high: "23",
                                low: "9")
          )
}

struct CityTemperatureView: View {
    
    var city: String
    var temperature: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(city)
                Image(systemName: "location.fill")
            }
            Text(temperature)
        }
    }
}

struct SkyConditionView: View {
    var cielo: String
    var higth: String
    var Low: String
    
    var conditionImage: String{
        switch cielo {
        case "Soleado":
            return "cloud.fill"
        case "Nublado":
            return "cloud.rain.fill"
        default:
            return "cloud.fill"
        }
        
        
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(systemName: "cloud.sun.fill")
            Text(cielo)
            Text("H:\(higth)° L:\(Low)°")
            
        }
    }
}
