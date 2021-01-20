//
//  ContentView.swift
//  SwiftUICookBook
//
//  Created by Zoha on 1/9/21.
//

import SwiftUI

struct ContentView: View {
  @State var query = ""
  @State var items = (0...10).map { $0  }
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVStack(spacing: 20) {

          TextField("Search", text: $query)
            .frame(minHeight: 44)
            .background(Color.gray)
            .cornerRadius(15)
            .padding()

          TitleView(title: "Ingreadiets")
        }

      }
      .listStyle(PlainListStyle())
      .navigationTitle("Recipe Shope")
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarItems(
        leading: Button(action: {}) {
          Image(uiImage: UIImage(named: "ic_menu")!)
        },
        trailing: Button(action: {}) {
          Image(uiImage: UIImage(named: "ic_notification")!)
        }
      )
    }
  }
}

struct TitleView: View {
  let title: String

  var body: some View {
    HStack {
      Text(title)
      Spacer()
      Button(action: {}) {
        Image(systemName: "chevron.right.circle")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
