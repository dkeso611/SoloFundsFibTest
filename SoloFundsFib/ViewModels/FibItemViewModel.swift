//
//  FibItemViewModel.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import Foundation

struct FibItemViewModel: Listable, Identifiable, Equatable {
    private let computedNumber: Int
    let id: String = UUID().uuidString
    let input: Int
    let elapsedTime: Double

    init(input: Int) {
        self.input = input
        (self.computedNumber, self.elapsedTime) = FibItemViewModel.getElapsedTime(operation: input.getFibonacciNumber)
    }
}

extension FibItemViewModel {
    var inputString: String {
        "\(input)"
    }

    var elapsedTimeString: String {
        "\(elapsedTime) ms"
    }

    var computedNumberString: String {
        computedNumber < 0 ? "Overflow" : "\(computedNumber)"
    }

    static func getElapsedTime(operation: () -> Int) -> (Int, Double) {
        let startTime = Date()
        let result = operation()
        let endTime = Date()
        let interval = DateInterval(start: startTime, end: endTime)
        return (result, interval.duration * 1000)
    }
}
