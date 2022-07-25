//
//  ContentView.swift
//  ExSecureTextField
//
//  Created by 김종권 on 2022/07/26.
//

import SwiftUI

struct ContentView: View {
  @State private var username = ""
  
  var body: some View {
    TextField(
      "입력하세요",
      text: $username
    )
      .modifier(PrimaryRoundTextField())
      .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct PrimaryRoundTextField: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(size: 16))
      .textFieldStyle(.roundedBorder)
      .foregroundColor(.black)
      .textInputAutocapitalization(.never)
      .disableAutocorrection(true)
  }
}
