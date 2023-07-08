import SwiftUI

struct AppNowPlayingDetailPage {
  let post: Post
  
  @State private var wishListSelected = false
  @State private var seenListSelected = false
}

extension AppNowPlayingDetailPage: View {
  
  @ViewBuilder
  var content: some View {
    VStack(alignment: .leading, spacing: 20) {
      Group {   // 영화 소개
        VStack {
          HStack(spacing: .zero) {
            Image(post.thumbnail)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .clipShape(RoundedRectangle(cornerRadius: 10))
              .frame(width: 150, height: 150)
            
            VStack(alignment: .leading, spacing: 20) {
              
              Spacer()
              
              Text("2023 * 142 minutes * Released \nUnited State of America")
                .font(.subheadline)
                .fontWeight(.bold)
              
              HStack {
                Text(post.averageUserRating)
                  .font(.footnote)
                Text("2,455 ratings")
                  .font(.title3)
              }
              
              Spacer()
            }
            
            Spacer()
            Spacer()
          }
          
          // 장르 버튼
          HStack(spacing: 10) {
            Button {
              print("Action")
            } label: {
              Text("Action")
                .font(.subheadline)
                .fontWeight(.bold)
              Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
            }
            .padding(.horizontal, 4)
            .foregroundColor(.white)
            .frame(width: 80, height: 25)
            .background(
              RoundedRectangle(cornerRadius: 10)
                .fill(.black)
            )
            
            Button {
              print("Crime")
            } label: {
              Text("Crime")
                .font(.subheadline)
                .fontWeight(.bold)
              Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
            }
            .padding(.horizontal, 4)
            .foregroundColor(.white)
            .frame(width: 80, height: 25)
            .background(
              RoundedRectangle(cornerRadius: 10)
                .fill(.black)
            )
            
            Button {
              print("Thriller")
            } label: {
              Text("Thriller")
                .font(.subheadline)
                .fontWeight(.bold)
              Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
            }
            .padding(.horizontal, 4)
            .foregroundColor(.white)
            .frame(width: 80, height: 25)
            .background(
              RoundedRectangle(cornerRadius: 10)
                .fill(.black)
            )
            
            Spacer()
          }
          .padding(.bottom, 20)
        }
      } // Group
      .frame(height: 250)
      .background(Color(.gray).opacity(0.2)
        .padding(.horizontal, -10)
      )
      
      
      HStack {
        Button(action: {
          wishListSelected.toggle()
          seenListSelected = false
        }) {
          HStack(spacing: 2) {
            if wishListSelected {
              Image(systemName: "heart.fill")
                .renderingMode(.template)
                .foregroundColor(.white)
              Text("In wishlist")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
            } else {
              Image(systemName: "heart")
                .foregroundColor(Color(.systemRed))
              Text("Wishlist")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemRed))
            }
          }
        }
        .frame(width: wishListSelected ? 120 : 100, height: 30, alignment: .center)
        .background(
          RoundedRectangle(cornerRadius: 5)
            .stroke(wishListSelected ? Color(.clear) : Color(.systemRed), lineWidth: 1)
            .background(
              RoundedRectangle(cornerRadius: 5)
                .fill(wishListSelected ? Color(.systemPink) : .clear)
            )
        )
        
        Button(action: {
          seenListSelected.toggle()
          wishListSelected = false
        }) {
          HStack(spacing: 2) {
            if seenListSelected {
              Image(systemName: "eye.fill")
                .renderingMode(.template)
                .foregroundColor(.white)
              Text("Seen")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
            } else {
              Image(systemName: "eye")
                .foregroundColor(Color(.systemGreen))
              Text("Seenlist")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemGreen))
            }
          }
        }
        .frame(width: seenListSelected ? 80 : 100, height: 30, alignment: .center)
        .background(
          RoundedRectangle(cornerRadius: 5)
            .stroke(seenListSelected ? Color(.clear) : Color(.systemGreen), lineWidth: 1)
            .background(
              RoundedRectangle(cornerRadius: 5)
                .fill(seenListSelected ? Color(.systemGreen) : .clear)
            )
        )
        
        Button(action: {
          
        }) {
          HStack(spacing: 2) {
            Image(systemName: "pin")
            Text("List")
          }
        }
        .frame(width: 60, height: 30, alignment: .center)
        .foregroundColor(Color(.systemYellow))
        .background(
          RoundedRectangle(cornerRadius: 5)
            .stroke(Color(.systemYellow), lineWidth: 1)
        )
        
        Spacer()
      }
      .padding(.top, 10)
      
      // MARK: - Reviews
      HStack {
        NavigationLink {
          ReviewPage()
            .navigationTitle("Reviews")
            .navigationBarTitleDisplayMode(.large)
          
        } label: {
          Text("7 reviews")
            .font(.system(size: 18, weight: .medium))
            .foregroundColor(Color(.systemMint).opacity(0.5))
        }
        
        Spacer()
      }
      .padding(.top, 10)
      
      // MARK: - Overview
      HStack {
        Text("Overview:")
          .font(.system(size: 18, weight: .bold))
        Spacer()
      }
      Text("over view")
        .foregroundColor(Color(.gray))
      
      Text("Read more")
        .font(.system(size: 18, weight: .medium))
        .foregroundColor(Color(.systemMint).opacity(0.5))
      
      
      // MARK: - Keywords
      
      HStack {
        Text("Keywords")
            .font(.system(size: 18, weight: .bold))
        Spacer()
      }
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 10) {
          Button {
            print("Sequel")
          } label: {
            Text("Sequel")
              .font(.subheadline)
              .fontWeight(.bold)
            Image(systemName: "chevron.right")
              .resizable()
              .scaledToFit()
              .frame(width: 10, height: 10)
          }
          .padding(.horizontal, 4)
          .foregroundColor(.white)
          .frame(width: 100, height: 25)
          .background(
            RoundedRectangle(cornerRadius: 10)
              .fill(.gray.opacity(0.5))
          )
          
          Button {
            print("Revenge")
          } label: {
            Text("Revenge")
              .font(.subheadline)
              .fontWeight(.bold)
            Image(systemName: "chevron.right")
              .resizable()
              .scaledToFit()
              .frame(width: 10, height: 10)
          }
          .padding(.horizontal, 4)
          .foregroundColor(.white)
          .frame(width: 100, height: 25)
          .background(
            RoundedRectangle(cornerRadius: 10)
              .fill(.gray.opacity(0.5))
          )
          
          Button {
            print("Racing")
          } label: {
            Text("Racing")
              .font(.subheadline)
              .fontWeight(.bold)
            Image(systemName: "chevron.right")
              .resizable()
              .scaledToFit()
              .frame(width: 10, height: 10)
          }
          .padding(.horizontal, 4)
          .foregroundColor(.white)
          .frame(width: 100, height: 25)
          .background(
            RoundedRectangle(cornerRadius: 10)
              .fill(.gray.opacity(0.5))
          )
          
          Button {
            print("Family")
          } label: {
            Text("Family")
              .font(.subheadline)
              .fontWeight(.bold)
            Image(systemName: "chevron.right")
              .resizable()
              .scaledToFit()
              .frame(width: 10, height: 10)
          }
          .padding(.horizontal, 4)
          .foregroundColor(.white)
          .frame(width: 100, height: 25)
          .background(
            RoundedRectangle(cornerRadius: 10)
              .fill(.gray.opacity(0.5))
          )
          
          Button {
            print("Cars")
          } label: {
            Text("Cars")
              .font(.subheadline)
              .fontWeight(.bold)
            Image(systemName: "chevron.right")
              .resizable()
              .scaledToFit()
              .frame(width: 10, height: 10)
          }
          .padding(.horizontal, 4)
          .foregroundColor(.white)
          .frame(width: 80, height: 25)
          .background(
            RoundedRectangle(cornerRadius: 10)
              .fill(.gray.opacity(0.5))
          )
          
          //          Spacer()
        }
      }
      
      // MARK: - Cast
      HStack(spacing: 10) {
        Text("Cast")
          .font(.system(size: 18, weight: .bold))
        
        Text("Sea all")
          .font(.system(size: 18, weight: .medium))
          .foregroundColor(Color(.systemMint).opacity(0.5))
        
        Spacer()
      }
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          ForEach(0...5, id: \.self) { _ in
            Button {
              print("tap")
            } label: {
              VStack{
                Image("image")
                  .resizable()
                  .scaledToFill()
                  .frame(width: 80, height: 120)
                  .cornerRadius(5)
                Text("Charlize Therom")
                  .font(.system(size: 14, weight: .medium))
                Text("Cipher")
                  .font(.system(size: 12, weight: .light))
              }
              .foregroundColor(Color(.label))
            }

          }
        }
      }

    } // Vstack
    .padding(.horizontal, 10)
  }
  
  var body: some View {
    ScrollView {
      content
    }
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button {
          
        } label: {
          Image(systemName: "text.badge.plus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 25, height: 25)
        }
      }
    }
  }
}

