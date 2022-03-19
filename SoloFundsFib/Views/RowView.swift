//
//  RowView.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import SwiftUI

struct RowView: View {
    var leadingTitle: String
    var trailingTitle: String

    var body: some View {
        VStack {
            HStack {
                Text(leadingTitle)
                Spacer()
                Text(trailingTitle)
            }
            .padding(.vertical)

            Divider()
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(leadingTitle: "Left title", trailingTitle: "Right title")
    }
}
