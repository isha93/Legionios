//
//  File.swift
//  
//
//  Created by isa nur fajar on 30/09/22.
//

import Foundation

//public class LGN {
//    public static var sharedInstance : LGN!
//    public var config : Ecosystem?
//
//    public init(config: Ecosystem?) {
//        self.config = config
//        LGN.sharedInstance = self
//    }
//
//    open class func shared(theme: Ecosystem?) -> LGN {
//        switch sharedInstance {
//        case let i?:
//            i.config = theme
//            return i
//        default:
//            sharedInstance = LGN(config: theme)
//            return sharedInstance
//        }
//    }
//}



public class LGN {
  public static var shared: LGN {
    if let initializedShared = _shared {
      return initializedShared
    }
    fatalError("Singleton not yet initialized. Run setup(withConfig:) first")
  }
  private static var _shared: LGN? // This can only be set by the setup() func since it is private
  private var config: Ecosystem // The configuration for the singleton. Could be a `String` if so requested

  /// The ParameterSingleton setup func. Will initialize the singleton with the config. Without a config, `shared` will cause a `fatalError`
  ///
  /// - Parameter config: The config needed for initializing the singleton
  class func setup(withConfig config: Ecosystem) {
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
