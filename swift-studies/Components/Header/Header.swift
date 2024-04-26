//
//  Header.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import SwiftUI

protocol HeaderFilter {
    var label: String { get }
    var key: String { get }
}

enum HeaderFilterEnum: String {
    case all = "all"
    case favorite = "favorites"
    case download = "download"
}

struct Header: View {
    let title: String
    let subtitle: String?
    
    init(title: String, subtitle: String? = nil) {
            self.title = title
            self.subtitle = subtitle
        }
    
  var body: some View {
    HStack {
        VStack(alignment: .leading) {
            Text(title)
                .padding()
                .font(.system(size: 26, weight: .semibold))
            if let subtitle = subtitle {
                Text(subtitle)
                    .padding()
                    .font(.system(size: 22))
                    .foregroundColor(Color("textSecondary"))
                    .frame(alignment: .topLeading)
                    .frame(height: 5)
            }
            Spacer()
        }
        .background(Color.white)
        .padding(.leading, 20)
        Spacer()
    }
    .frame(maxWidth: .infinity)
    .frame(height: 100)
    .overlay(
        Rectangle()
            .frame(width: nil, height: 1, alignment: .bottom)
            .foregroundColor(Color("border"))
            .alignmentGuide(.bottom) { d in
                d[VerticalAlignment.bottom] - 7
            },
        alignment: .bottom
    )
  }
}

struct Header_Previews: PreviewProvider {
  static var previews: some View {
      Header(title: "Header", subtitle: "This is a header component.")
      .previewInterfaceOrientation(.landscapeLeft)
  }
}

