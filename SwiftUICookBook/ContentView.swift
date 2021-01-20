//
//  ContentView.swift
//  SwiftUICookBook
//
//  Created by Zoha on 1/9/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      NavigationLink("Setting", destination: SettingsView())
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
