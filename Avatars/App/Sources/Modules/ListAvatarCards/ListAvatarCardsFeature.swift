//
//  ListAvatarCardsFeature.swift
//  Avatars
//
//  Created by Vitalii Sosin on 09.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import Foundation
import ComposableArchitecture

struct ListAvatarCardsFeature: Reducer {
  private let uploadPhotoFeature = UploadPhotoFeature()
  
  struct State: Equatable {
    var uploadPhotoFeatureState: UploadPhotoFeature.State
  }
  enum Action {
    case uploadPhotoFeatureAction(UploadPhotoFeature.Action)
  }
  
  func reduce(into state: inout State, action: Action) -> Effect<Action> {
    switch action {
    case let .uploadPhotoFeatureAction(uploadPhotoFeatureAction):
      let childEffect = uploadPhotoFeature.reduce(into: &state.uploadPhotoFeatureState, action: uploadPhotoFeatureAction)
      return childEffect.map(Action.uploadPhotoFeatureAction)
    }
  }
}
