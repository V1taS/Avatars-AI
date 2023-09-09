//
//  AvatarCardView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 09.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI

struct AvatarCardView: View {
  
  // MARK: - Private property
  
  private let avatarLeftName: String
  private let avatarCentertName: String
  private let avatarRightName: String
  private let title: String
  private let description: String
  
  // MARK: - Initialization
  
  init(title: String, description: String, avatarLeftName: String, avatarCentertName: String, avatarRightName: String) {
    self.title = title
    self.description = description
    self.avatarLeftName = avatarLeftName
    self.avatarCentertName = avatarCentertName
    self.avatarRightName = avatarRightName
  }
  
  var body: some View {
    VStack(spacing: .zero) {
      TripleAvatarRowView(
        avatarLeftName: avatarLeftName,
        avatarCentertName: avatarCentertName,
        avatarRightName: avatarRightName
      )
      .padding(.top, 24)
      
      Text(title)
        .font(.system(size: 24))
        .fontWeight(.bold)
        .padding(.top, 32)
        .foregroundColor(.fancy.only.primaryBlack)
      
      Text(description)
        .font(.system(size: 20))
        .fontWeight(.regular)
        .foregroundColor(.fancy.only.primaryGray)
        .padding(.top, 8)
      
      Button(action: {
        // TODO:  - Actions
      }) {
        Text("Create")
          .font(.system(size: 18))
          .fontWeight(.semibold)
          .frame(maxWidth: .infinity, maxHeight: 56)
          .foregroundColor(Color.fancy.only.primaryWhite)
          .background(Color.fancy.only.primaryBlue)
          .cornerRadius(12)
          .padding(24)
      }
    }
    .frame(maxWidth: .infinity)
//    .background(
//      RoundedRectangle(cornerRadius: 24, style: .circular)
//        .fill(LinearGradient(
//          gradient: Gradient(colors: [
//            Color.fancy.only.tertiaryGray,
//            Color.fancy.only.tertiaryGray
//          ]),
//          startPoint: .top,
//          endPoint: .bottom
//        ))
//        .shadow(color: .fancy.only.secondaryGray, radius: 4, x: 4, y: 4),
//      alignment: .center
//    )
  }
}

struct AvatarCardView_Previews: PreviewProvider {
  static var previews: some View {
    AvatarCardView(
      title: "Humans",
      description: "Try yourself in different looks",
      avatarLeftName: "avatar_card_left",
      avatarCentertName: "avatar_card_center",
      avatarRightName: "avatar_card_right"
    )
  }
}
