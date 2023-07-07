import SwiftUI

struct AppFanClubPage {
}

extension AppFanClubPage: View {
  
  @ViewBuilder
  var header: some View {
    Text("headeer")
  }
  
  @ViewBuilder
  var content: some View {
    Text("Fan club page")
  }
  
  var body: some View {
    VStack {
      header
      content
    }
  }
}
