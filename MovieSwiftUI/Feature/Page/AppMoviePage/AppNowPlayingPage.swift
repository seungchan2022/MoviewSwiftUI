import SwiftUI

struct AppNowPlayingPage {
  
  @FocusState private var isFocused
  @State private var keyword = ""
  
}

extension AppNowPlayingPage: View {
  
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
          AppNowPlayingDetailPage(post: post)
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

struct Information {
  let post: Post
}

extension Information: View {
  
  @ViewBuilder
  var content: some View {
    HStack(spacing: .zero) {
      Image(post.thumbnail)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .frame(width: 200, height: 200)
      
      VStack(alignment: .leading, spacing: 8) {
        Text(post.title)
          .font(.system(size: 20, weight: .bold))
          .foregroundColor(.yellow)
        
        Spacer()
        
        HStack {
          Text(post.averageUserRating)
            .font(.system(size: 14, weight: .light))
          Text(post.releaseDate)
            .font(.system(size: 16, weight: .light))
        }
        
        Spacer()
        
        Text(post.description)
          .font(.system(size: 18, weight: .light))
          .foregroundColor(.gray)
      }
    }
  }
  
  var body: some View {
    content
  }
}

struct Post: Hashable {
  let thumbnail: String
  let title: String
  let averageUserRating: String
  let releaseDate: String
  let description: String
  
}

extension Post {
  static var MOCK_POSTS: [Post] = [
    .init(
      thumbnail: "image",
      title: "Fast X",
      averageUserRating: "73%",
      releaseDate: "May 17, 2023",
      description: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path."
    ),
    .init(
      thumbnail: "image",
      title: "Fast X",
      averageUserRating: "73%",
      releaseDate: "May 17, 2023",
      description: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path."
    ),
    .init(
      thumbnail: "image",
      title: "Fast X",
      averageUserRating: "73%",
      releaseDate: "May 17, 2023",
      description: "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path."
    ),
  ]
}
