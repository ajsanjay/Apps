//
//  WeatherButton.swift
//  swiftUI-1
//
//  Created by jay sabeen on 14/12/23.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColour: Color
    var backgroundClr: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundClr.gradient)
            .foregroundColor(textColour)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    WeatherButton(title: "Change Day Time", textColour: .white, backgroundClr: .blue)
}
