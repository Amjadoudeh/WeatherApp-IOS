//
//  Extensions.swift
//  WeatherApp-IOS
//
//  Created by Amjad Oudeh on 15.02.22.
//

import Foundation
import UIKit
import SwiftUI

extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}

extension View {
    func cornerRaduis(_ raduis: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(raduis: raduis, corners: corners))
    }
}

