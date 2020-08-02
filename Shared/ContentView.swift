//
//  ContentView.swift
//  Shared
//
//  Created by Chaitanya K Kamatham on 7/31/20.
//

import SwiftUI

struct ContentView: View {
    #if os(iOS)
      @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    #endif
  
    var body: some View {
        #if os(iOS)
          if horizontalSizeClass == .compact {
              TabBarView()
          } else {
              ListView()
          }
        #else
          ListView()
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
