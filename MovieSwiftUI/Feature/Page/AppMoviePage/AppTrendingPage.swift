import SwiftUI

struct AppTrendingPage {
  
}

extension AppTrendingPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("header")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Trending page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}
