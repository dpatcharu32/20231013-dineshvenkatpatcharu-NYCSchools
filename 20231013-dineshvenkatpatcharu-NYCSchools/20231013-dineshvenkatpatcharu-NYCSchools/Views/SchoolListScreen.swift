//
//  SchoolListScreen.swift
//  20231013-dineshvenkatpatcharu-NYCSchools
//
//  Created by Dinesh on 13/10/23.
//

import SwiftUI

struct SchoolListScreen: View {
    @StateObject private var viewModel = SchoolListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.search(), id: \.dbn) { school in
                    NavigationLink {
                        SchoolDetailScreen(school: school, results: resultsFor(school))
                    } label: {
                        SchoolListItem(school: school)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("High Schools")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await viewModel.fetchData()
            }
            .searchable(text: $viewModel.searchString, tokens: $viewModel.searchTokens, placement: .automatic, prompt: "Search") { token in
                token.tokenView
            }

            .toolbar {
                navigationTitle
                sortMenu
            }
        }
    }
    
    @ToolbarContentBuilder
    var navigationTitle: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("")
        }
        ToolbarItem(placement: .navigationBarLeading) {
            Text("High schools")
                .font(.system(.largeTitle, design: .rounded, weight: .bold))
                .foregroundColor(.publicNavy)
                .padding(.bottom, 6)
        }
    }
    
    var sortMenu: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Menu {
                Picker(selection: $viewModel.sortOrder, label: Text("Sort")) {
                    ForEach(SortOrder.allCases) { sort in
                        HStack {
                            Text(sort.rawValue.localizedCapitalized)
                            Spacer()
                            
                        }
                    }
                }
            } label: {
                Image(systemName: "ellipsis.circle")
            }
            .menuStyle(.button)
        }
    }
}

extension SchoolListScreen {
    func resultsFor(_ school: School) -> TestResults? {
        viewModel.testResults[school.dbn]
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        SchoolListScreen()
//    }
//}

