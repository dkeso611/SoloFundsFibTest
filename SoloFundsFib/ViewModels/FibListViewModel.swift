//
//  FibListViewModel.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import SwiftUI

class FibListViewModel: ListViewModelProtocol {
    var title: String {
        return "FibTest"
    }
    
    var detailViewTitle: String {
        return "Summary"
    }
    
    var clearButtonTitle: String {
        return "Clear"
    }
    
    var textFieldPlaceholder: String {
        return "Enter Number"
    }
    
    var footerViewTitle: String {
        "Total time: \(calculateTotalTime()) ms"
    }
    
    var alertView: (title: String, buttonTitle: String) {
        return ("Please Enter Valid Input", "Try Again")
    }
    
    @Published var showAlert: Bool = false
    @Published private(set) var list: [FibItemViewModel]
        
    init() {
        self.list = [
            .init(input: 2),
            .init(input: 5)
        ]
    }
    
    func add(item: FibItemViewModel) {
        list.append(item)
    }
    
    func calculateTotalTime() -> Double {
        list.map { $0.elapsedTime }.reduce(0, +)
    }
    
    func clear () {
        list = []
    }
    
    func validate(term: String) {
        if let integer = Int(term) {
            add(item: .init(input: integer))
        } else {
            showAlert = true
        }
    }
}

