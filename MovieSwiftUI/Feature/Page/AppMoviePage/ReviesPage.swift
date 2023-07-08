import SwiftUI

struct ReviewPage {
  
}

extension ReviewPage: View {
  
  @ViewBuilder
  var content: some View {
    ScrollView {
      VStack {
        ForEach(0...10, id: \.self) { _ in
          HStack {
            Text("Review Page")
            
            Spacer()
          }
          .padding(.horizontal, 20)
        }
      }
   }
  }
  
  var body: some View {
    content
  }
}
