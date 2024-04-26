//
//  LandingView.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import SwiftUI

struct LandingView: View {
    @State var testValue: String = ""
    
    var body: some View {
        HStack(spacing: 0) {
          SideBarView(list: mockSidebarItems)
          VStack {
            Header(title: "Testes", subtitle: "Esta é uma página para testar componentes.")
            VStack {
                TitledInput(title: "Teste de input", size: 0.7, padding: 12, type: "", value: $testValue)
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
