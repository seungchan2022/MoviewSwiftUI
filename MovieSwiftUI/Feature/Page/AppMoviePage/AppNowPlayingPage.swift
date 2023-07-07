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
      ForEach(0...5, id: \.self) { _ in
        NavigationLink {
          test()
        } label: {
          Information()
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
    
//    NavigationView {
        VStack {
          header
          content
        }
      
      .navigationTitle("Now Playing")
      .navigationBarTitleDisplayMode(.inline)
//    }
  }
}

struct Information {
}

extension Information: View {
  
  @ViewBuilder
  var content: some View {
    HStack(spacing: .zero) {
      Image("image")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .frame(width: 200, height: 200)
      
      VStack(alignment: .leading, spacing: 8) {
        Text("Fast X")
          .font(.title3)
          .foregroundColor(.yellow)
        
        Spacer()
        
        HStack {
          Text("73%")
            .font(.footnote)
          Text("May 17, 2023")
            .font(.subheadline)
        }
        
        Spacer()
        
        Text("Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path.")
          .font(.title2)
          .foregroundColor(.gray)
      }
    }
  }
  
  var body: some View {
    content
  }
}

