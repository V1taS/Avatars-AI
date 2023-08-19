//
//  RootFeature.swift
//  Avatars
//
//  Created by Vitalii Sosin on 19.08.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import ComposableArchitecture

struct RootFeature: Reducer {
  struct State: Equatable {
    var count = 0
  }
  enum Action {
    case decrementButtonTapped
    case incrementButtonTapped
  }
  
  func reduce(into state: inout State, action: Action) -> Effect<Action> {
    switch action {
    case .decrementButtonTapped:
      state.count -= 1
      return .none
      
    case .incrementButtonTapped:
      state.count += 1
      return .none
    }
  }
}
