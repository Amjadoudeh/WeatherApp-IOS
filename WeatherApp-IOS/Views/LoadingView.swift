//
//  SwiftUIView.swift
//  WeatherApp-IOS
//
//  Created by Amjad Oudeh on 10.02.22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
