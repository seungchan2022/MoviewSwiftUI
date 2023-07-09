import SwiftUI

struct AppMyListPage {
  @State private var isCreateCustomList = false
  @State private var isShowingWishList = true
  @State private var isShowingSeenList = false
}

extension AppMyListPage: View {
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      // Custom lists
      Text("CUSTOM LISTS")
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(.gray)
        .padding(.horizontal, 10)
      
      Button {
        isCreateCustomList = true
      } label: {
        Text("Create Custom list")
          .font(.system(size: 18, weight: .medium))
          .frame(maxWidth: .infinity, alignment: .leading)
          .frame(height: 40)
          .padding(.horizontal)
          .background(Color.gray.opacity(0.3))
          .foregroundColor(Color(.systemMint).opacity(0.5))
      }
      .sheet(isPresented: $isCreateCustomList) {
        NavigationView {
          CustomListsPage()
            .navigationTitle("New list")
        }
      }
      .padding(.bottom, 20)
      
      // Wishlist, Seenlist
      // => wishlist를 누르면 wishlistpage가 나오고
      // => seenlist를 누르면 seenlistpage가 나오도록
      ZStack {
        Color.gray.opacity(0.3)
          .frame(height: 40)
        
        HStack(spacing: 0) {
          Button {
            isShowingWishList = true
            isShowingSeenList = false
          } label: {
            Text("Wishlist")
          }
          .frame(width: 150, height: 30)
          //        .clipShape(Capsule())
          .background(isShowingWishList ? Color.gray.opacity(0.7) : Color.gray.opacity(0.3))
          .foregroundColor(.white)
          .cornerRadius(10)
          
          Button {
            isShowingSeenList = true
            isShowingWishList = false
          } label: {
            Text("Seenlist")
          }
          .frame(width: 150, height: 30)
          .background(isShowingSeenList ? Color.gray.opacity(0.7) : Color.gray.opacity(0.3))
          .foregroundColor(.white)
          .cornerRadius(10)
        }
        
      } // ZStack
      .padding(.bottom, 20)
      
      // => wishlist를 누르면 wishlistpage가 나오고
      
      if isShowingWishList {
        Text("\(Post.MOCK_POSTS.count) MOVES IN WISHLIST (BY RELEASE DATE)")
          .font(.system(size: 14, weight: .medium))
          .foregroundColor(.gray)
          .padding(.horizontal, 10)

        List {
          ForEach(Post.MOCK_POSTS, id: \.self) { post in
            NavigationLink {
              WishListPage(post: post)
                .navigationTitle(post.title)
            } label: {
              Information(post: post)
                .frame(maxHeight: 200)
            }
          }
          .listRowSeparator(.hidden)
          .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
          .listRowBackground(Color(.gray).opacity(0.3))
        }
        .listStyle(.plain)
        .padding(.top)
      }
      
      // => seenlist를 누르면 seenlistpage가 나오도록
      if isShowingSeenList {
        Text("1 MOVES IN SEENLIST (BY RELEASE DATE)")
          .font(.system(size: 14, weight: .medium))
          .foregroundColor(.gray)
          .padding(.horizontal, 10)
        
        List {
          ForEach(0..<1, id: \.self) { index in
            let post = Post.MOCK_POSTS[index]
            NavigationLink {
              SeenListPage(post: post)
                .navigationTitle(post.title)
            } label: {
              Information(post: post)
                .frame(maxHeight: 200)
            }

          }
          .listRowSeparator(.hidden)
          .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
          .listRowBackground(Color(.gray).opacity(0.3))
        }
        .listStyle(.plain)
        .padding(.top)
        
      }
      
      Spacer()
    } // VStack
    .padding(.top, 16)
    
    // 네비게이션 툴바
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button {
          
        } label: {
          Image(systemName: "line.3.horizontal.decrease.circle")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 25, height: 25)

        }
      }
    }
  }
}
