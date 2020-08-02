//
//  ListView.swift
//  Book Reading Tracker (iOS)
//
//  Created by Chaitanya K Kamatham on 8/2/20.
//

import SwiftUI

struct ListView: View {
    
  enum ListNavigationItem {
      case recent
      case bookslist
      case stats
      case settings
  }
    
  @State private var selection: Set<ListNavigationItem> = [.recent]
  @State private var selectedItem: ListNavigationItem?;
  
  var sidebar: some View {
    List(selection: $selection) {
      NavigationLink(destination: HomeView(), tag: ListNavigationItem.recent, selection: $selectedItem) {
          Label("Recent", systemImage: "clock.fill")
      }
      
      NavigationLink(destination: BooksListView(), tag: ListNavigationItem.bookslist, selection: $selectedItem) {
          Label("Books", systemImage: "books.vertical.fill")
      }
      
      NavigationLink(destination: BooksListView(), tag: ListNavigationItem.stats, selection: $selectedItem) {
          Label("Stats", systemImage: "chart.bar.xaxis")
      }
      NavigationLink(destination: BooksListView(), tag: ListNavigationItem.settings, selection: $selectedItem) {
          Label("Settings", systemImage: "gear")
      }
    }
  }
    var body: some View {
      NavigationView {
        sidebar
          .navigationTitle("Books Reading Tracker")
          .onAppear {
            if(self.selectedItem == nil) {
              self.selectedItem = .recent
            }
          }
      }
      .navigationTitle("")
      .listStyle(SidebarListStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
