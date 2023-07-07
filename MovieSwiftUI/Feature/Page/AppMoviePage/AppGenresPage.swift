import SwiftUI

struct AppGenersPage {
  
}

extension AppGenersPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("header")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Geners page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}

