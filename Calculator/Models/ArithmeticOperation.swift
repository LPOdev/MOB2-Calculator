//
//  ArithmeticOperation.swift
//  Calculator
//
//  Created by Luís Pedro Pinheiro on 15.03.2024.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible{
    case addition, subtraction, multiplication, division
    
    var description: String{
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
