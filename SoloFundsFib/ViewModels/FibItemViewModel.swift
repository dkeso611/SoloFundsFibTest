//
//  FibItemViewModel.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import Foundation

struct FibItemViewModel: ItemProtocol, Identifiable , Equatable{
    private let computedNumber: Int
    
    let id: String = UUID().uuidString
    let input: Int
    var elapsedTime: Double
    
    var computedNumberString: String {
        computedNumber < 0 ? "Overflow" : "\(computedNumber)"
    }
    
    init(input: Int) {
        self.input = input
        (self.computedNumber, self.elapsedTime) = FibItemViewModel.getElapsedTime(operation: input.getFibonacciNumber)
    }
}

extension FibItemViewModel {
    static func getElapsedTime(operation: () -> Int) -> (Int, Double) {
        let startTime = Date()
        let result = operation()
        let endTime = Date()
        let interval = DateInterval(start: startTime, end: endTime)
        return (result, interval.duration * 1000)
    }
}
