import SwiftUI

struct AppGenersPage {
}

extension AppGenersPage: View {
  var body: some View {
    List {
      ForEach(Post.MOCK_POSTS, id: \.self) { post in
        NavigationLink {
          AppGenersDetailPage(post: post)
            .navigationTitle(post.title)
            .navigationBarTitleDisplayMode(.large)
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
    
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button {
          
        } label: {
          Image(systemName: "line.3.horizontal.decrease.circle")
        }
      }
    }
  }
}
