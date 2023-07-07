import SwiftUI

struct HomePage {
  @State private var selection = 0
}

extension HomePage: View {
  
  @ViewBuilder
  var content: some View {
    TabView(selection: $selection) {
      AppMoviePage()
        .tabItem {
          VStack {
            Image(systemName: "film")
              .renderingMode(.template)
            Text("Movies")
          }
        }
        .navigationTitle("seardfd")
        .tag(0)
      
      AppDiscoverPage()
        .tabItem {
          VStack {
            Image(systemName: "square.stack")
              .renderingMode(.template)
            Text("Discover")
          }
        }
        .tag(1)
      
      AppFanClubPage()
        .tabItem {
          VStack {
            Image(systemName: "star.circle.fill")
              .renderingMode(.template)
            Text("Fan Club")
          }
        }
        .tag(2)
      
      AppMyListPage()
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
