import SwiftUI

struct AppTopRatePage {
  
}

extension AppTopRatePage: View {
  
  @ViewBuilder
  var header: some View {
    Text("header")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Top rate page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}

