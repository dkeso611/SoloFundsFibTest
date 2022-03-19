//
//  ViewModelProtocol.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import Foundation
typealias Listable = Timeable & Computable & Identifiable

protocol ListViewModelProtocol: ObservableObject {
    associatedtype ListableItem: Listable
    var title: String { get }

    var detailViewTitle: String  { get }

    var clearButtonTitle: String  { get }

    var textFieldPlaceholder: String  { get }

    var footerViewTitle: String  { get }

    var alertView: (title: String, buttonTitle: String) { get }

    var showAlert: Bool { get set }

    var displayList: [RowView] { get }

    var detailViewList: [RowView] { get }

    var list: [ListableItem] { get }

    func add(item: ListableItem)

    func calculateTotalTime() -> Double

    func clear ()

    func validate(term: String)
}
