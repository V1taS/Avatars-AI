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
  private let action: (() -> Void)?
  
  // MARK: - Initialization
  
  init(title: String, action: (() -> Void)?) {
    self.title = title
    self.action = action
  }
  
  var body: some View {
    Button(action: {
      action?()
    }) {
      Text(title)
        .font(.system(size: 18))
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
        .foregroundColor(Color.fancy.only.primaryWhite)
        .background(Color.fancy.only.primaryBlue)
        .cornerRadius(12)
    }
  }
}

struct ButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonView(title: AvatarsStrings.Localizable.create, action: nil)
  }
}
