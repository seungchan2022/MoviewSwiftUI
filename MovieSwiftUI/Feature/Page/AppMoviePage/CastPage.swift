import SwiftUI

struct CastPage {
}

extension CastPage: View {
  var body: some View {
    List {
      ForEach(0...5, id: \.self) { _ in
        CastDetailPage()
          .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
          .frame(height: 120)
          .padding(.horizontal, 10)
      }
    }
    .listStyle(.plain)
    .background(.black)
  }
}

