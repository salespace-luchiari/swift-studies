//
//  LandingView.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        HStack(spacing: 0) {
          SideBarView(list: mockSidebarItems)
          VStack {
            Header(title: "Testes", subtitle: "Esta é uma página para testar componentes.")
            VStack {
              
            }
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .background(Color("surface"))
          }
        }
    }
}


struct LandingView_Previews: PreviewProvider {
  static var previews: some View {
      LandingView()
      .previewInterfaceOrientation(.landscapeLeft)
  }
}
