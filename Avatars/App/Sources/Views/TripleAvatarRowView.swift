//
//  TripleAvatarRowView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 09.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI
import FancyStyle

struct TripleAvatarRowView: View {
  
  // MARK: - Private property
  
  private let avatarLeftName: String
  private let avatarCentertName: String
  private let avatarRightName: String
  
  // MARK: - Initialization
  
  init(avatarLeftName: String, avatarCentertName: String, avatarRightName: String) {
    self.avatarLeftName = avatarLeftName
    self.avatarCentertName = avatarCentertName
    self.avatarRightName = avatarRightName
  }
  
  // MARK: - Body
  
  var body: some View {
    HStack {
      avatarCircleView(name: avatarLeftName)
        .frame(width: 94, height: 94)
        .offset(x: 35)
        .zIndex(1)
      avatarCircleView(name: avatarCentertName)
        .frame(width: 110, height: 110)
        .zIndex(2)
      avatarCircleView(name: avatarRightName)
        .frame(width: 94, height: 94)
        .offset(x: -35)
        .zIndex(1)
    }
  }
}

// MARK: - Private

private extension TripleAvatarRowView {
  func avatarCircleView(name: String) -> some View {
    Image(name)
      .resizable()
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.fancy.only.secondaryWhite, lineWidth: 2))
  }
}

// MARK: - Previews

struct TripleAvatarRowView_Previews: PreviewProvider {
  static var previews: some View {
    TripleAvatarRowView(
      avatarLeftName: "avatar_card_left",
      avatarCentertName: "avatar_card_center",
      avatarRightName: "avatar_card_right"
    )
  }
}
