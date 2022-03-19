//
//  SoloFundsFibApp.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/17/22.
//

import SwiftUI

@main
struct SoloFundsFibApp: App {
    var body: some Scene {
        WindowGroup {
            ListView(viewModel: FibListViewModel())
        }
    }
}
