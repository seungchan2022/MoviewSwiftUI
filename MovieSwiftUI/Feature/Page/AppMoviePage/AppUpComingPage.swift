import SwiftUI

struct AppUpComingPage {
  
  @FocusState private var isFocused
  @State private var keyword = ""
  
}

extension AppUpComingPage: View {
  
  @ViewBuilder
  var header: some View {
      VStack {
        HStack(spacing: 15) {
          Image(systemName: "magnifyingglass")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
          
          TextField("Search any movie or person", text: $keyword)
            .textFieldStyle(.plain)
            .frame(height: 40)
            .padding(.horizontal)
            .background(
              RoundedRectangle(cornerRadius: 5)
                .stroke(.gray.opacity(0.7), lineWidth: 1))
          
            .focused($isFocused, equals: true)
          if !keyword.isEmpty {
            Button(action: { keyword = "" }) {
              Text("Cancel")
                .foregroundColor(.red)
            }
          }
        }
        .padding(.horizontal, 8)
      }
      .padding(.horizontal)
    }
  
  
  @ViewBuilder
  var content: some View {
    List {
      ForEach(Post.MOCK_POSTS, id: \.self) { post in
        NavigationLink {
          AppUpComingDetailPage(post: post)
            .navigationTitle(post.title)
        } label: {
          Information(post: post)
            .frame(maxHeight: 200)
        }

      }
      .listRowSeparator(.hidden)
      .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
    .listStyle(.plain)
    .padding(.top)
  }
  
  var body: some View {
        VStack {
        header
        content
      }
    }
}
