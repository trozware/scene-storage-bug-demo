//
//  ContentView.swift
//  Storage
//
//  Created by Sarah Reichelt on 19/5/2022.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("appSetting") var appSetting = false
  @SceneStorage("sceneSetting") var sceneSetting = false

  var body: some View {
    VStack(alignment: .leading) {
      Toggle("App setting", isOn: $appSetting)
      Toggle("Scene setting", isOn: $sceneSetting)

      Spacer()

      Text("App setting is \(appSetting ? "ON " : "OFF")")
      Text("Scene setting is \(sceneSetting ? "ON " : "OFF")")
        .frame(width: 150, alignment: .leading)
    }
    .padding()
    .frame(width: 250, height: 150)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
