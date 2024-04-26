//
//  ItemSidebar.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import SwiftUI

struct ItemSidebar: View {
  let icon: String
  let text: String
  let isActive: Bool

  var body: some View {
    HStack {
      if isActive {
        Color.blue
          .frame(width: 4)
      }
      Spacer().frame(width: 16)
      Image(systemName: icon)
        .foregroundColor(isActive ? .black : .gray)
      Text(text)
        .foregroundColor(isActive ? .black : .gray)
      Spacer()
    }
    .frame(height: 60)
    .frame(maxWidth: .infinity)
  }
}

struct ItemSidebar_Previews: PreviewProvider {
  static var previews: some View {
    ItemSidebar(icon: "tshirt", text: "Item", isActive: true)
  }
}
