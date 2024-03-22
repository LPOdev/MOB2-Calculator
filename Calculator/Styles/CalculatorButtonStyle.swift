//
//  CalculatorButtonStyle.swift
//  Calculator
//
//  Created by Luís Pedro Pinheiro on 15.03.2024.
//

import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    var size: CGFloat
    var backgroundColor: Color
    var foregroundStyle: Color
    var isWide: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 32, weight: .medium))
            .frame(width: size, height: size)
            .frame(maxWidth: isWide ? .infinity : size, alignment: .leading)
            .background(backgroundColor)
            .foregroundStyle(foregroundStyle)
            .overlay{
                if configuration.isPressed{
                    Color(white:1.0, opacity: 0.2)
                }
            }
            .clipShape(Capsule())
    }
}

struct CalculatorButtonStyle_Previews: PreviewProvider {
    static let buttonType: ButtonType = .digit(.four)
    
    static var previews: some View {
        Button(buttonType.description) { }
            .buttonStyle(CalculatorButtonStyle(
                size: 80,
                backgroundColor: buttonType.backgroundColor,
                foregroundStyle: buttonType.foregroundStyle,
                isWide: buttonType == .digit(.zero))
            )
            .padding()
    }
}
