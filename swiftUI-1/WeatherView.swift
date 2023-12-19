//
//  WeatherView.swift
//  swiftUI-1
//
//  Created by jay sabeen on 14/12/23.
//

import SwiftUI

struct WeatherView: View {
    
    var dayOfWeek: String
    var imgName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
//                .foregroundColor(.red)
//                .foregroundStyle(.pink, .orange, .gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherView(dayOfWeek: "TUE", imgName: "cloud.sun.fill", temperature: 74)
}
