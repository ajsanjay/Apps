//
//  CityTextView.swift
//  swiftUI-1
//
//  Created by jay sabeen on 14/12/23.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName).font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

#Preview {
    CityTextView(cityName: "Marthandam, TN")
}
