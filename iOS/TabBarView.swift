//
//  TabBarView.swift
//  Book Reading Tracker (iOS)
//
//  Created by Chaitanya K Kamatham on 8/2/20.
//

import SwiftUI

struct TabBarView: View {
  
  enum Tab {
    case recent
    case bookslist
    case stats
    case settings
  }
  
  @State private var selection: Tab = .recent
  var body: some View {
    TabView() {
      NavigationView() {
        HomeView()
      }
      .tabItem {
        Label("Recent", systemImage: "clock.fill")
      }
      NavigationView() {
        BooksListView()
      }
      .tabItem {
        Label("Books", systemImage: "books.vertical.fill")
      }
      NavigationView() {
        BooksListView()
      }
      .tabItem {
        Label("Stats", systemImage: "chart.bar.xaxis")
      }
      NavigationView() {
        BooksListView()
      }
      .tabItem {
        Label("Settings", systemImage: "gear")
      }
    }
  }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
