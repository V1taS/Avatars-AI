//
//  ButtonView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 10.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI
import FancyStyle

struct ButtonView: View {
  
  // MARK: - Private property
  
  private let title: String
  private let systemNameImage: String?
  private let action: (() -> Void)?
  
  // MARK: - Initialization
  
  init(title: String,
       systemNameImage: String? = nil,
       action: (() -> Void)?) {
    self.title = title
    self.systemNameImage = systemNameImage
    self.action = action
  }
  
  var body: some View {
    Button(action: {
      action?()
      UIImpactFeedbackGenerator(style: .soft).impactOccurred()
    }) {
      HStack(spacing: 8) {
        if let systemNameImage {
          Image(systemName: systemNameImage)
            .foregroundColor(Color.fancy.only.primaryWhite)
            .font(.system(size: 20))
            .fontWeight(.semibold)
        }
        
        Text(title)
          .font(.system(size: 18))
          .fontWeight(.semibold)
          .foregroundColor(Color.fancy.only.primaryWhite)
      }
      .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
      .background(Color.fancy.only.primaryBlue)
      .cornerRadius(12)
    }
  }
}

struct ButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonView(
      title: AvatarsStrings.Localizable.create,
      systemNameImage: "wand.and.stars",
      action: nil
    )
  }
}
