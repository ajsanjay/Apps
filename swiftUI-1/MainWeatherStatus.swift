//
//  MainWeatherStatus.swift
//  swiftUI-1
//
//  Created by jay sabeen on 14/12/23.
//

import SwiftUI

struct MainWeatherStatus: View {
    
    var imgName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

