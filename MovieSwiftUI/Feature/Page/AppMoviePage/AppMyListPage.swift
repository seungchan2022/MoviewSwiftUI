import SwiftUI

struct AppMyListPage {
}

extension AppMyListPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("headeer")
  }
  
  @ViewBuilder
  var content: some View {
    Text("My List page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}

