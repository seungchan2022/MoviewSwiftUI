import SwiftUI

struct AppNowPlayingPage {
  
  @FocusState private var isFocused
  @State private var keyword = ""
  
}

extension AppNowPlayingPage: View {
  
  //  var filter: (String) -> [String] {
  //    { text in
  //
  //    }
  //  }
  
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
      
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            print("DEBUG: Did tap button..")
          } label: {
            Image(systemName: "wrench.adjustable")
              .imageScale(.large)
          }
        }
      }
      
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            print("DEBUG: Did tap button..")
          } label: {
            Image(systemName: "rectangle.3.group.fill")
              .imageScale(.large)
          }
        }
      
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
          .font(.title3)
          .foregroundColor(.yellow)
        
        Spacer()
        
        HStack {
          Text(post.averageUserRating)
            .font(.footnote)
          Text(post.releaseDate)
            .font(.subheadline)
        }
        
        Spacer()
        
        Text(post.description)
          .font(.title2)
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

//
//import SwiftUI
//import ExpandableText
//
//struct ExpandableText_Test: View {
//
//    var body: some View {
//        ExpandableText(text: "Do you think you're living an ordinary life? You are so mistaken it's difficult to even explain. The mere fact that you exist makes you extraordinary. The odds of you existing are less than winning the lottery, but here you are. Are you going to let this extraordinary opportunity pass?")
//            .font(.body)//optional
//            .foregroundColor(.primary)//optional
//            .lineLimit(3)//optional
//            .animation(.easeOut)//optional
//            .padding(.horizontal, 24)//optional
//    }
//}
