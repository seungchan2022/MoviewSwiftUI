//import SwiftUI
//
//struct HomePage {
//  @State private var selection = 0
//}
//
//extension HomePage: View {
//
//  @ViewBuilder
//  var content: some View {
//    TabView() {
//      AppMoviePage()
//        .tabItem {
//          VStack {
//            Image(systemName: "film")
//              .renderingMode(.template)
//            Text("Movies")
//          }
//        }
//        .navigationTitle("seardfd")
//        .tag(0)
//
//      AppDiscoverPage()
//        .tabItem {
//          VStack {
//            Image(systemName: "square.stack")
//              .renderingMode(.template)
//            Text("Discover")
//          }
//        }
//        .tag(1)
//
//      AppFanClubPage()
//        .tabItem {
//          VStack {
//            Image(systemName: "star.circle.fill")
//              .renderingMode(.template)
//            Text("Fan Club")
//          }
//        }
//        .tag(2)
//
//      AppMyListPage()
//        .tabItem {
//          VStack {
//            Image(systemName: "heart.circle")
//              .renderingMode(.template)
//            Text("My Lists")
//          }
//        }
//        .tag(3)
//    }
//    .accentColor(.yellow)
//    .onAppear {
//      selection = 0
//    }
//  }
//
//  var body: some View {
//      content
//  }
//}

import SwiftUI

struct HomePage {
  @State private var selection = 0
}

extension HomePage: View {
  @ViewBuilder
  var content: some View {
    TabView(selection: $selection) {
      NavigationView {
        AppMoviePage()
//          .navigationBarTitleDisplayMode(.inline)
      }
      .tabItem {
        VStack {
          Image(systemName: "film")
            .renderingMode(.template)
          Text("Movies")
        }
      }
      .tag(0)
      
      NavigationView {
        AppDiscoverPage()
          .navigationTitle("Discover")
      }
      .tabItem {
        VStack {
          Image(systemName: "square.stack")
            .renderingMode(.template)
          Text("Discover")
        }
      }
      .tag(1)
      
      NavigationView {
        AppFanClubPage()
          .navigationTitle("Fan Club")
      }
      .tabItem {
        VStack {
          Image(systemName: "star.circle.fill")
            .renderingMode(.template)
          Text("Fan Club")
        }
      }
      .tag(2)
      
      NavigationView {
        AppMyListPage()
          .navigationTitle("My Lists")
      }
      .tabItem {
        VStack {
          Image(systemName: "heart.circle")
            .renderingMode(.template)
          Text("My Lists")
        }
      }
      .tag(3)
    }
    .accentColor(.yellow)
  }
  
  
  var body: some View {
    content
  }
  
  
}
