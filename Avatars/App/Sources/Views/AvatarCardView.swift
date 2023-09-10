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
  private let titleButton: String
  private let actionButton: (() -> Void)?
  
  // MARK: - Initialization
  
  init(title: String,
       description: String,
       avatarLeftName: String,
       avatarCentertName: String,
       avatarRightName: String,
       titleButton: String,
       actionButton: (() -> Void)?) {
    self.title = title
    self.description = description
    self.avatarLeftName = avatarLeftName
    self.avatarCentertName = avatarCentertName
    self.avatarRightName = avatarRightName
    self.titleButton = titleButton
    self.actionButton = actionButton
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
        .padding(.horizontal, 24)
        .multilineTextAlignment(.center)
      
      Text(description)
        .font(.system(size: 20))
        .fontWeight(.regular)
        .foregroundColor(.fancy.only.primaryGray)
        .padding(.top, 8)
        .padding(.horizontal, 24)
        .multilineTextAlignment(.center)
      
      ButtonView(title: titleButton, action: actionButton)
        .padding(24)
    }
    .frame(maxWidth: .infinity)
    .background(
      RoundedRectangle(cornerRadius: 24, style: .circular)
        .fill(LinearGradient(
          gradient: Gradient(colors: [
            Color.fancy.only.tertiaryGray,
            Color.fancy.only.tertiaryGray
          ]),
          startPoint: .top,
          endPoint: .bottom
        ))
        .shadow(color: .fancy.only.secondaryGray, radius: 4, x: 4, y: 4),
      alignment: .center
    )
  }
}

struct AvatarCardView_Previews: PreviewProvider {
  static var previews: some View {
    AvatarCardView(
      title: AvatarsStrings.Localizable.humans,
      description: AvatarsStrings.Localizable.tryYourselfInDifferentLooks,
      avatarLeftName: AvatarsAsset.avatarCardLeft.name,
      avatarCentertName: AvatarsAsset.avatarCardCenter.name,
      avatarRightName: AvatarsAsset.avatarCardRight.name,
      titleButton: AvatarsStrings.Localizable.create,
      actionButton: nil
    )
  }
}
