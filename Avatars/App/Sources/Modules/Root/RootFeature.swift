//
//  RootFeature.swift
//  Avatars
//
//  Created by Vitalii Sosin on 19.08.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import ComposableArchitecture

struct RootFeature: Reducer {
  private let listAvatarCardsFeature = ListAvatarCardsFeature()
  
  struct State: Equatable {
    var listAvatarCardsState: ListAvatarCardsFeature.State
  }
  enum Action {
    case listAvatarCardsAction(ListAvatarCardsFeature.Action)
  }
  
  func reduce(into state: inout State, action: Action) -> Effect<Action> {
    switch action {
    case let .listAvatarCardsAction(listAvatarCardsAction):
      let childEffect = listAvatarCardsFeature.reduce(into: &state.listAvatarCardsState, action: listAvatarCardsAction)
      return childEffect.map(Action.listAvatarCardsAction)
    }
  }
}
