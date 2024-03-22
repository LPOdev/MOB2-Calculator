//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Luís Pedro Pinheiro on 15.03.2024.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}
