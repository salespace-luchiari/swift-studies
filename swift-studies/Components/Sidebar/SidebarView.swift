//
//  SidebarView.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import SwiftUI

struct SideBarView: View {
  @StateObject private var viewModel = SideBarViewModel()
  let list: [SidebarItemType]

  var body: some View {
      VStack {
          List(0..<list.count, id: \.self) { index in
              let item = list[index]
              ItemSidebar(icon: item.iconName, text: item.name, isActive: index == viewModel.selectedItemIndex)
                  .listRowSeparator(.hidden)
                  .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                  .onTapGesture {
                      viewModel.selectedItemIndex = index
                  }
          }
      }
    .overlay(
        Rectangle().frame(width: 1, alignment: .leading).foregroundColor(Color("border")).frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/),
      alignment: .trailing
    )
    .padding(0)
    .listStyle(GroupedListStyle())
    .frame(width: sideBarWidth)
    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    .frame(alignment: .leading)
    .scrollContentBackground(.hidden)
    .onAppear{
        viewModel.selectedItemIndex = 0
    }
  }
}

struct SideBarView_Previews: PreviewProvider {
  static var previews: some View {
    SideBarView(list: mockSidebarItems)
      .previewLayout(.sizeThatFits)
  }
}
