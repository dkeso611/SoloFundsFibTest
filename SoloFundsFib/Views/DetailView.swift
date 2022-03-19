//
//  DetailView.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import SwiftUI

struct DetailView: View {
    let title: String
    let list: [ItemProtocol]
    
    var listView: some View {
        ScrollView(showsIndicators: false) {
            ForEach(list, id: \.id) { item in
                RowView(
                    leftTitle: item.inputString,
                    rightTitle: item.elapsedTimeString
                )
            }
            Spacer()
        }
    }
    
    var body: some View {
        listView
        .padding(.horizontal)
        .navigationTitle(title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var mockItems: [FibItemViewModel] = [
        .init(input: 2),
        .init(input: 3),
        .init(input: 4),
        .init(input: 5)
    ]
    static var previews: some View {
        NavigationView {
            DetailView(title: "Summary", list: mockItems.reversed())
        }
    }
}

