//
//  ContentView.swift
//  WeatherApp-IOS
//
//  Created by Amjad Oudeh on 07.02.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude),\(location.latitude)")
            } else {
                if locationManager.isLoading {
                    // ProgrdssView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }.background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354) )
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
