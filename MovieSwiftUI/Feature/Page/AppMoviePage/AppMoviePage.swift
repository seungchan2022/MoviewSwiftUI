import SwiftUI

struct AppMoviePage: View {
  
  @ViewBuilder
  var content: some View {
    TabView {
      AppNowPlayingPage()
        .navigationTitle("Now Playing")
        .navigationBarTitleDisplayMode(.large)
        .tabItem {
        }
      
      AppUpComingPage()
        .navigationTitle("Up Cpming")
        .tabItem {
        }
      
      AppTrendingPage()
        .navigationTitle("Trending")
        .tabItem {
        }
      
      AppPopularPage()
        .navigationTitle("Popular")
        .tabItem {
        }
      
      AppTopRatePage()
        .navigationTitle("Top Rate")
        .tabItem {
        }
      
      AppGenersPage()
        .navigationTitle("Geners")
        .tabItem {
        }
    }
    
    .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
  }
  
  var body: some View {
    content
  }
}
