//
//  Int+.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import Foundation

extension Int {
    func getFibonacciNumber() -> Int {
        var a = 1
        var b = 1
        
        guard self > 0 else { return 0 } // if negative return 0
        guard self > 2 else { return 1 }
        
        (3...self).forEach { _ in
            (a, b) = (a &+ b, a)
        }
        
        return a < 0 ? -1 : a
    }
}
