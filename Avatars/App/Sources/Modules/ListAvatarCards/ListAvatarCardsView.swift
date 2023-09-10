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
      VStack(spacing: 32) {
        AvatarCardView(
          title: AvatarsStrings.Localizable.humans,
          description: AvatarsStrings.Localizable.tryYourselfInDifferentLooks,
          avatarLeftName: AvatarsAsset.avatarCardLeft.name,
          avatarCentertName: AvatarsAsset.avatarCardCenter.name,
          avatarRightName: AvatarsAsset.avatarCardRight.name,
          titleButton: AvatarsStrings.Localizable.create,
          actionButton: nil
        )
        
        AvatarCardView(
          title: AvatarsStrings.Localizable.dogsAndCats,
          description: AvatarsStrings.Localizable.makeYourPetASuperhero,
          avatarLeftName: AvatarsAsset.avatarAnimalCardLeft.name,
          avatarCentertName: AvatarsAsset.avatarAnimalCardCenter.name,
          avatarRightName: AvatarsAsset.avatarAnimalCardRight.name,
          titleButton: AvatarsStrings.Localizable.create,
          actionButton: nil
        )
      }
      .padding(24)
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
