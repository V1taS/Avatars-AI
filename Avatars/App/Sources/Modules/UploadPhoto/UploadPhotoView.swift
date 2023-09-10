//
//  UploadPhotoView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 10.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

struct UploadPhotoView: View {
  let store: StoreOf<UploadPhotoFeature>
  
  var body: some View {
    WithViewStore(self.store, observe: { $0 }) { viewStore in
      VStack(spacing: 32) {

      }
      .padding(24)
      .background(Color.red)
    }
  }
}

struct UploadPhotoView_Previews: PreviewProvider {
  static var previews: some View {
    UploadPhotoView(
      store: Store(initialState: .init()) {
        UploadPhotoFeature()
      }
    )
  }
}
