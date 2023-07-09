import SwiftUI

struct AppFanClubPage: View {
  @State private var scrollToTop = false
  
  @ViewBuilder
  var header: some View {
    VStack(spacing: .zero) {
      Text("POPULAR PEOPLE TO ADD TO YOUR FAN CLUB")
        .font(.system(size: 18, weight: .bold))
        .frame(maxWidth: .infinity)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .background(Color.gray.opacity(0.3))
        .foregroundColor(.white)
      
      // Additional header content if needed
    }
  }
  
  @ViewBuilder
  var contetnt: some View {
    ScrollViewReader { scrollViewProxy in
      List {
        Section(header: header) {
          ForEach(0...10, id: \.self) { _ in
            NavigationLink {
              AppFanClubDetailPage()
            } label: {
              HStack(spacing: 10) {
                Image("image")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 60, height: 100)
                
                VStack(alignment: .leading, spacing: 10) {
                  Text("AJ Raval")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.yellow)
                  
                  Text("Hugas, Us X Her, Kaliwaan")
                    .font(.system(size: 16, weight: .light))
                    .foregroundColor(.gray)
                }
                .padding(.horizontal, 10)
              }
            }
            .listRowBackground(Color(.clear))
            .padding(.top, 16)
          }
        }
        .listRowInsets(EdgeInsets())
      }
      .listStyle(.plain)
      .padding()
      .onChange(of: scrollToTop) { newValue in
        if newValue {
          withAnimation {
            scrollViewProxy.scrollTo(0, anchor: .top)
          }
        }
      }
    }
  }
  
  var body: some View {
      contetnt
      
  }
}

//예를 들어
//
//헤더
//
//콘텐츠가 있고 콘텐츠에 List를 설정 했을때 위로 스크롤 하면 네비게이션 타이틀은 인라인으로 표시되고 헤더는 네비게이션 바 이상 올라가지 않게 하려면
// @ViewBuilder로 표현할 영억을 나누고 다시 합쳐져 포혔했을때 List를 사용하면 모든 부분이 스크롤 되지 않았음
// 이렇게 설정하면 패딩 처럼 레이아웃이 header와 content가 같이 설정된다....
