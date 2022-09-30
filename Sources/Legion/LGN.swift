//
//  File.swift
//  
//
//  Created by isa nur fajar on 30/09/22.
//

import Foundation

public class LGN {
    private static var _shared: LGN?
    private var config: Ecosystem
    
    public static var shared: LGN {
        if let initializedShared = _shared {
            return initializedShared
        }
        fatalError("Singleton not yet initialized. Run setup(withConfig:) first")
    }
    
    /// The ParameterSingleton setup func. Will initialize the singleton with the config. Without a config, `shared` will cause a `fatalError`
    ///
    /// - Parameter config: The config needed for initializing the singleton
    open class func setup(withConfig config: Ecosystem) {
        _shared = LGN(withConfig: config)
    }
    
    
    // Make the init private so this class can only be used be invoking the `setup(withConfig:)` func
    private init(withConfig config: Ecosystem) {
        self.config = config
    }
    
    /// The public func to do something
    public func doSomething() -> String? {
        return config.module
    }
}
