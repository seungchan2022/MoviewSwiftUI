import SwiftUI

struct AppUpComingPage {
  
}

extension AppUpComingPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("header")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Up Coming page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}
