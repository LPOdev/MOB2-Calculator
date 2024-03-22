//
//  Digit.swift
//  Calculator
//
//  Created by Luís Pedro Pinheiro on 15.03.2024.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
