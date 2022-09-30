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
    
    open class func shared(config: Ecosystem? = .LGN) -> LGN {
        switch sharedInstance {
        case let i?:
            i.config = config
            return i
        default:
            sharedInstance = LGN(config: config)
            return sharedInstance
        }
    }
}
