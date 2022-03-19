//
//  RowView.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/18/22.
//

import SwiftUI

struct RowView: View {
    var leftTitle: String
    var rightTitle: String
    
    var body: some View {
        VStack {
            HStack {
                Text(leftTitle)
                Spacer()
                Text(rightTitle)
            }
            .padding(.vertical)
            
            Divider()
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(leftTitle: "Left title", rightTitle: "Right title")
    }
}
