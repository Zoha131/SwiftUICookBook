//
//  GroceryShopView.swift
//  SwiftUICookBook
//
//  Created by Zoha on 1/23/21.
//

import SwiftUI

struct GroceryShopView: View {
  var body: some View {
    ScrollView {

      VStack(spacing: 20) {
        HStack{
          Image(systemName: "magnifyingglass")
            .foregroundColor(.gray)
            .padding(.horizontal, 18)
          TextField("Find food here...", text: .constant(""))
        }
        .frame(minHeight: 60)
        .background(
          RoundedRectangle(cornerRadius: 12)
            .fill(Color.gray.opacity(0.15))
        )
        .padding(.top)
        .padding(.horizontal, 32)

        HStack {
          Text("Ingridients")
            .font(.headline)
            .fontWeight(.regular)

          Spacer()

          Button(action: {}) {
            Image(systemName: "chevron.right.circle")
              .resizable()
              .frame(width: 22, height: 22)
              .foregroundColor(.green)
          }
        }
        .padding(.horizontal, 32)

        LazyVGrid(
          columns: [
            GridItem(.flexible(minimum: 40, maximum: 80)),
            GridItem(.flexible(minimum: 40, maximum: 80)),
            GridItem(.flexible(minimum: 40, maximum: 80)),
            GridItem(.flexible(minimum: 40, maximum: 80))
          ],
          spacing: 18
        ) {
          ForEach( 1..<9 ) { id in
            VStack {
              ZStack {
                Image("Ingridients\(id)")
              }
              .frame(width: 40, height: 40)
              .padding()
              .background(
                RoundedRectangle(cornerRadius: 10)
                  .stroke(Color.gray.opacity(0.25), style: StrokeStyle())
              )

              Text("Coconut")
                .lineLimit(1)
            }
          }
        }
        .padding(.horizontal, 32)

        ScrollView(.horizontal){
          HStack {
            let width: CGFloat = UIScreen.main.bounds.width - 50
            let height: CGFloat = 200

            ForEach(0..<5) { id in


              ZStack {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .fill(Color.white)

              }
              .frame(width: width, height: height)
              .shadow(radius: 10)
              .padding(.vertical)
              .padding(.leading, 10)

            }
          }
        }
      }
    }
    .navigationBarTitle(Text("Home"))
    .navigationBarTitleDisplayMode(.inline)
    .navigationBarItems(
      leading: Button(action: {}) {
        Image("ic_menu")
          .foregroundColor(.black)
      },
      trailing: Button(action: {}) {
        Image("ic_notification")
          .foregroundColor(.black)
      }
    )
    .navigationBarColor(.white)
  }
}

struct GroceryShopView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      GroceryShopView()
    }
    .preferredColorScheme(.light)
  }
}
