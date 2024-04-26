//
//  Card.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import Foundation
import SwiftUI

struct CardView: View {
    let title: String
    let subtitle: String?
    let width: Double
    var ChildrenView: AnyView
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .padding()
                        .font(.system(size: 20, weight: .semibold))
                    if let subtitle = subtitle {
                        Text(subtitle)
                            .padding()
                            .font(.system(size: 18))
                            .foregroundColor(Color("textSecondary"))
                            .frame(alignment: .topLeading)
                            .frame(height: 5)
                    }
                    Spacer()
                }
                .frame(height: 90)
                Spacer()
            }
            
            HStack {
                ChildrenView
                Spacer()
            }
            
        }
        
        .frame(width: width)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("border"), lineWidth: 2)
        )
        .background(.white)
        .cornerRadius(8)
        .shadow(color: Color("border"), radius: 8, y: 6)
    }
}


struct CardView_Previews: PreviewProvider {
  static var previews: some View {
      CardView(title: "Card", subtitle: "This is a card component.", width: 500, ChildrenView: AnyView(
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: "scribble.variable")
                .padding(.leading, 16)
                .imageScale(.large)
          Text("View testing. This is a sample description.")
                .padding(.leading, 16)
                .font(.system(size: 22))
                .foregroundColor(Color("textSecondary"))
        }
            .padding(.top, 16)
            .padding(.bottom, 16)
      ))
  }
}

