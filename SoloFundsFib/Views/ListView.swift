//
//  ListView.swift
//  SoloFundsFib
//
//  Created by Suru Layé on 3/17/22.
//

import SwiftUI

struct ListView<ViewModel: ListViewModelProtocol>: View {
    @StateObject var viewModel: ViewModel
    @State var searchTerm = ""
    
    var title: String {
        viewModel.title
    }
    
    var list: [ItemProtocol] {
        viewModel.list.reversed()
    }
    
    var summaryButton: some View {
        NavigationLink(viewModel.detailViewTitle) {
            DetailView(
                title: viewModel.detailViewTitle,
                list: list
            )
        }
    }
    
    var clearButton: some View {
        Button(
            action: viewModel.clear,
            label: { Text(viewModel.clearButtonTitle) }
        )
    }
    
    var textFieldView: some View {
        TextField(
            viewModel.textFieldPlaceholder,
            text: $searchTerm,
            onCommit: {
                viewModel.validate(term: searchTerm)
                searchTerm = ""
            }
        )
        .submitLabel(.return)
    }
    
    var scrollView: some View {
        ScrollView(showsIndicators: false) {
            ForEach(list, id: \.id) { item in
                RowView(
                    leftTitle: item.inputString,
                    rightTitle: item.computedNumberString
                )
            }
            Spacer()
        }
    }
    
    var listView: some View {
        VStack {
            textFieldView
            VStack {
                scrollView
                footerView
                    .padding()
            }
        }
    }
    
    var footerView: some View {
        Text(viewModel.footerViewTitle)
    }
    
    var body: some View {
        NavigationView {
            listView
                .padding(.horizontal)
                .alert(
                    viewModel.alertView.title,
                    isPresented: $viewModel.showAlert
                ) {
                    Button(
                        viewModel.alertView.buttonTitle,
                        role: .cancel
                    ) {}
                }
                .navigationTitle(viewModel.title)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        clearButton
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        summaryButton
                    }
                }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var mockItems: [FibItemViewModel] = [
        .init(input: 2),
        .init(input: 3),
        .init(input: 4),
        .init(input: 5)
    ]
    static var previews: some View {
        ListView(viewModel: FibListViewModel())
        
        NavigationView {
            DetailView(title: "Summary", list: mockItems)
        }
    }
}
