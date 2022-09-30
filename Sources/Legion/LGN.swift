//
//  File.swift
//  
//
//  Created by isa nur fajar on 30/09/22.
//

import Foundation

public class LGN {
    private static var sharedInstance : LGN!
    public var config : Ecosystem?
    
    public init(config: Ecosystem?) {
        self.config = config
        LGN.sharedInstance = self
    }
    
    open class func shared(theme: Ecosystem? = .AGR) -> LGN {
        switch sharedInstance {
        case let i?:
            i.config = theme
            return i
        default:
            sharedInstance = LGN(config: theme)
            return sharedInstance
        }
    }
}
