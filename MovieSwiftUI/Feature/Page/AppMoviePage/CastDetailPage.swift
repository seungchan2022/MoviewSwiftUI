import SwiftUI

struct CastDetailPage {
  
}

extension CastDetailPage: View {
  @ViewBuilder
  var content: some View {
    HStack {
      Image("image")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 80, height: 100)
        .cornerRadius(5)
      VStack(alignment: .leading, spacing: 8) {
        Text("Charlize Theron")
          .font(.system(size: 18, weight: .bold))
        Text("Cipher")
          .font(.system(size: 14, weight: .light))
          .foregroundColor(.gray)
      }
    }
  }
  
  var body: some View {
    content
  }
}
