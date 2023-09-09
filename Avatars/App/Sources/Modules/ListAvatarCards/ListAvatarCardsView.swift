//
//  ListAvatarCardsView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 09.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

struct ListAvatarCardsView: View {
  let store: StoreOf<ListAvatarCardsFeature>
  
  var body: some View {
    WithViewStore(self.store, observe: { $0 }) { viewStore in
      ZStack {
        RoundedRectangle(cornerRadius: 24, style: .circular)
          .fill(LinearGradient(
            gradient: Gradient(colors: [Color.gray, Color.gray]),
            startPoint: .top,
            endPoint: .bottom
          ))
          .aspectRatio(1.618, contentMode: .fit)
        
          .shadow(color: .black, radius: 4, x: 4, y: 4)
        
        VStack {
          Text("sdvgdsv")
        }
      }
    }
  }
}

struct ListAvatarCardsView_Previews: PreviewProvider {
  static var previews: some View {
    ListAvatarCardsView(
      store: Store(initialState: ListAvatarCardsFeature.State()) {
        ListAvatarCardsFeature()
      }
    )
  }
}
