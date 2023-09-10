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
      NavigationStack {
        ScrollView(.vertical, showsIndicators: false) {
          ListAvatarCardsView(
            store: store.scope(
              state: \.listAvatarCardsState,
              action: RootFeature.Action.listAvatarCardsAction
            )
          )
        }
        .navigationTitle(AvatarsStrings.Localizable.avatarsAi)
        .navigationBarTitleDisplayMode(.large)
      }
    }
  }
}

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView(
      store: Store(initialState: RootFeature.State(
        listAvatarCardsState: .init(uploadPhotoFeatureState: .init())
      )) {
        RootFeature()
      }
    )
  }
}
