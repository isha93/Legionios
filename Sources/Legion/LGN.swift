//
//  File.swift
//  
//
//  Created by isa nur fajar on 30/09/22.
//

import Foundation

public class LGN {
    public init(){}
    public var config : Ecosystem = .LGN
    
    class var swiftSharedInstance: LGN {
        struct Singleton {
            static let instance = LGN()
        }
        return Singleton.instance
    }
    
    open class func sharedInstance() -> LGN {
        return LGN.swiftSharedInstance
    }
}
