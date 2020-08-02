//
//  BooksListView.swift
//  Book Reading Tracker
//
//  Created by Chaitanya K Kamatham on 8/2/20.
//

import SwiftUI

struct BooksListView: View {
    var body: some View {
      VStack(alignment: .center) {
        Text("Books")
          .font(.largeTitle)
        Spacer()
      }.navigationTitle("Books")
    }
}

struct BooksListView_Previews: PreviewProvider {
    static var previews: some View {
      BooksListView()
    }
}
