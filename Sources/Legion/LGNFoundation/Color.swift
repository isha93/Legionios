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
    public var primary : Color {
        if let theme : String = LGN.shared.doSomething(){
            return Color("\(theme)/Primary", bundle: .module)
        }
        return .primary
    }
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
