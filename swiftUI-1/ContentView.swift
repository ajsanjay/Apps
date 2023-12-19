//
//  ContentView.swift
//  swiftUI-1
//
//  Created by jay sabeen on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
//    @Binding
//    @StateObject
//    @ObservedObject
//    @EnvironmentObject
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "India, TN")
                MainWeatherStatus(imgName: isNight ?  "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 48 : 78)
                .padding(.bottom, 20)
                HStack(spacing: 20) {
                    WeatherView(dayOfWeek: "TUE", imgName: "cloud.sun.fill", temperature: 74)
                    WeatherView(dayOfWeek: "WED", imgName: "sun.max.fill", temperature: 88)
                    WeatherView(dayOfWeek: "THU", imgName: "wind.snow", temperature: 55)
                    WeatherView(dayOfWeek: "FRI", imgName: "sunset.fill", temperature: 60)
                    WeatherView(dayOfWeek: "SAT", imgName: "snow", temperature: 28)
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColour: .blue, backgroundClr: .white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


