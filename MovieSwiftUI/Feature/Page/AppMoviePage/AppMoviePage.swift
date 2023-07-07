import SwiftUI

struct AppMoviePage: View {
  
  @ViewBuilder
  var content: some View {
    TabView {
      
      AppNowPlayingPage()
        .tabItem {
        }
      
      AppUpComingPage()
        .tabItem {
        }
      
      AppTrendingPage()
        .tabItem {
        }
      
      AppPopularPage()
        .tabItem {
        }
      
      AppTopRatePage()
        .tabItem {
        }
      
      AppGenersPage()
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
