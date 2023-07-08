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
