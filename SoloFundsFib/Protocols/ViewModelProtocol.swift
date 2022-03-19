//
//  ViewModelProtocol.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import Foundation

protocol ListViewModelProtocol: ObservableObject {
    associatedtype Item: ItemProtocol
    
    var title: String { get }
    
    var detailViewTitle: String  { get }
    
    var clearButtonTitle: String  { get }
    
    var textFieldPlaceholder: String  { get }
    
    var footerViewTitle: String  { get }
    
    var alertView: (title: String, buttonTitle: String) { get }
    
    var showAlert: Bool { get set }
    
    var list: [Item] { get }
        
    func add(item: Item)
    
    func calculateTotalTime() -> Double
    
    func clear ()
    
    func validate(term: String)
}
