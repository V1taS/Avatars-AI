//
//  RootView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 19.08.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

struct RootView: View {
  let store: StoreOf<RootFeature>
  
  var body: some View {
    WithViewStore(self.store, observe: { $0 }) { viewStore in
      List {
        AvatarCardView(
          title: "Humans",
          description: "Try yourself in different looks",
          avatarLeftName: "avatar_card_left",
          avatarCentertName: "avatar_card_center",
          avatarRightName: "avatar_card_right"
        )
        
        AvatarCardView(
          title: "Dogs & cats",
          description: "Make your pet a superhero",
          avatarLeftName: "avatar_animal_card_left",
          avatarCentertName: "avatar_animal_card_center",
          avatarRightName: "avatar_animal_card_right"
        )
        .padding(.top, 24)
      }
    }
  }
}

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView(
      store: Store(initialState: RootFeature.State()) {
        RootFeature()
      }
    )
  }
}
