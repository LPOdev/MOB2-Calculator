//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Luís Pedro Pinheiro on 15.03.2024.
//

import SwiftUI

extension CalculatorView{
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        @EnvironmentObject private var viewModel: ViewModel
        
        var body: some View {
            Button(buttonType.description) {
                viewModel.performAction(for: buttonType)
            }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor: getBackgroundColor(),
                    foregroundStyle: getForegroundStyle(),
                    isWide: buttonType == .digit(.zero))
                )
        }
        
        // MARK: - HELPERS
        
        private func getButtonSize() -> CGFloat{
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
        
        private func getBackgroundColor() -> Color {
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.foregroundStyle : buttonType.backgroundColor
        }
        
        private func getForegroundStyle() -> Color {
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.backgroundColor : buttonType.foregroundStyle
        }
    }
}

struct CalculatorView_CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView.CalculatorButton(buttonType: .digit(.five))
    }
}
