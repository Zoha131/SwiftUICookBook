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

        // MARK: Search Bar
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

        // MARK: Ingredients Header
        HStack {
          Text("Ingredients")
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

        // MARK: Ingredients
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
                Image("Ingredients\(id)")
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

        // MARK: Slider
        ScrollView(.horizontal, showsIndicators: false){
          HStack(spacing: 16) {
            Spacer(minLength: 16)

            ForEach(0..<2) { id in
              ZStack(alignment: .bottomLeading) {
                Image("vegetable2")
                  .resizable()
                  .aspectRatio(16/7, contentMode: .fill)

                VStack(alignment: .leading) {
                  Text("Fresh Inside")
                    .font(.headline)
                    .fontWeight(.regular)
                    .padding(.bottom, 3)

                  Text("Healthy Outside")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                }
                .padding(.all, 25)
              }
              .aspectRatio(16/7, contentMode: .fill)
              .frame(width: UIScreen.main.bounds.width - 80)
              .padding(.vertical)
              .shadow(radius: 7)
            }

            Spacer(minLength: 16)
          }
        }

        // MARK: Menu Header
        HStack {
          Text("Top Rated Menus")
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


      }
    }
    //.navigationBarTitle(Text("Home"))
    .navigationBarTitleDisplayMode(.inline)
    .navigationBarItems(
      leading: Button(action: {}) {
        Image("ic_menu")
          .foregroundColor(.black)
          .padding(.leading)
      },
      trailing: Button(action: {}) {
        Image("ic_notification")
          .foregroundColor(.black)
          .padding(.trailing)
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
