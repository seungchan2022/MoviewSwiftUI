import SwiftUI

struct AppDiscoverPage {
}

extension AppDiscoverPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("headeer")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Discover page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}
