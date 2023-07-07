import SwiftUI

struct AppPopularPage {
  
}

extension AppPopularPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("header")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Popular page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}

