//
//  ItemProtocol.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/19/22.
//

import Foundation

protocol ItemProtocol {
    var id: String { get }
    var input: Int { get }
    var computedNumberString: String { get }
    var elapsedTime: Double { get }
}

extension ItemProtocol {
    var inputString: String {
        "\(input)"
    }
    
    var elapsedTimeString: String {
        "\(elapsedTime) ms"
    }
}
