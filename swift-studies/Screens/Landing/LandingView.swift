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
                CardView(title: "Card de teste", subtitle: "Este card serve apenas para testar componentes.", width: 800, ChildrenView: AnyView(
                        VStack(alignment: .leading, spacing: 12) {
                            Image(systemName: "scribble.variable")
                                .padding(.leading, 16)
                                .imageScale(.large)
                        }
                        .padding(.top, 16)
                        .padding(.bottom, 16)
                ))
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
