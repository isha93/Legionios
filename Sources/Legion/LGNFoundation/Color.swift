//
//  File.swift
//  
//
//  Created by isa nur fajar on 29/09/22.
//

import Foundation
import SwiftUI

public extension Color {
    static let LGNTheme = LGNColor()
}

public struct LGNColor {
    private let module = LGN.sharedInstance().config.module
    public let primary : Color = Color("\(module)Primary", bundle: .module)
}

public enum Ecosystem{
    case AGR
    case LOGEE
    case LGN
}

extension Ecosystem {
    public var module : String {
        switch self {
        case .AGR:
            return "AGR"
        case .LOGEE:
            return "LOGEE"
        case .LGN:
            return "LGN"
        }
    }
}
