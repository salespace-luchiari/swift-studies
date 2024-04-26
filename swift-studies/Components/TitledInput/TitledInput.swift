//
//  TitledInput.swift
//  swift-studies
//
//  Created by Laura Ranucci Luchiari on 26/04/24.
//

import Foundation
import SwiftUI

extension String {
    func keyboardType() -> UIKeyboardType {
        switch self {
        case "number":
            return .numberPad
        case "phone":
            return .phonePad
        case "email":
            return .emailAddress
        default:
            return .default
        }
    }
}

struct TitledInput: View {
  let title: String
  let size: Double
  let padding: Double
  let type: String
  @Binding var value: String
    
  var body: some View {
    VStack(alignment: .leading){
      Text(title)
        .font(.caption)
        .foregroundColor(Color.black)
        .fontWeight(.medium)
      TextField(title, text: $value)
        .font(.system(size: 16))
        .foregroundColor(Color.gray)
        .keyboardType(type.keyboardType())
        .padding(10)
        .overlay(
          RoundedRectangle(cornerRadius: 4)
            .stroke(Color("Surface"), lineWidth: 1)
        )
    }
    .frame(width: (UIScreen.main.bounds.width * size) - padding)
  }
}
