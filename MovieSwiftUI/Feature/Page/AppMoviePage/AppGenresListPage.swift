import SwiftUI

struct AppGenersListPage {
  @State private var movieGenres: [String] = mock
}

extension AppGenersListPage: View {
    
  var body: some View {
    List {
      ForEach(movieGenres, id: \.self) { genre in
        HStack {
          NavigationLink(destination: AppGenersPage()
            .navigationTitle(genre)
            .navigationBarTitleDisplayMode(.inline)
          ) {
            Text(genre)
          }
        }
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets())
        .padding()
      }
    }
    .listStyle(.plain)
  }
}

let mock: [String] = [
"Random",
"Action",
"Adventure",
"Animation",
"Comedy",
"Crime",
"Documentary",
"Drama",
"Family",
"Fantasy",
"History",
"Horror",
"Music",
"Mystery",
"Romance",
"Science Fiction",
"TV Movie",
"Thriller",
"War",
"Western",
]
