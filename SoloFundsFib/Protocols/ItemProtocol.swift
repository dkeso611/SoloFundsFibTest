//
//  ItemProtocol.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/19/22.
//

import Foundation

protocol Computable {
    var input: Int { get }
}

protocol Timeable {
    var elapsedTime: Double { get }
}
