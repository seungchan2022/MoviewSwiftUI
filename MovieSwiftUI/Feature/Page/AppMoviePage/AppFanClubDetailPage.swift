import SwiftUI

struct AppFanClubDetailPage {
  @State private var clickFanButton = false
}

extension AppFanClubDetailPage: View {
  
  @ViewBuilder
  var header: some View {
    VStack(alignment: .leading, spacing: 8) {
      HStack(spacing: 10) {
        Image("image")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 100, height: 200)
          .cornerRadius(10)
        
        VStack(alignment: .leading, spacing: 5) {
          Text("Known for")
            .font(.system(size: 18, weight: .medium))
          Text("Acting")
            .font(.system(size: 16, weight: .medium))
          Text("Hugas, Us X Her, kaliwaan")
            .font(.system(size: 18, weight: .medium))
            .foregroundColor(.gray)
          
          Spacer()
        }
        Spacer()
      }
      
      // MARK: - Biography
      Text("Biography")
        .font(.system(size: 18, weight: .medium))
      
      Text("Biography of the AJ Raval")
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(.gray)
      
      Button {
        
      } label: {
        Text("Read more")
          .font(.system(size: 18, weight: .medium))
          .foregroundColor(Color(.systemMint).opacity(0.5))
      }

      // MARK: - Place of birth
      Text("Place of birth")
        .font(.system(size: 18, weight: .medium))
      
      Text("Manila, Philppines")
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(.gray)
      
      // MARK: - Fan level
      if clickFanButton {
        Text("Fan level")
          .font(.system(size: 18, weight: .medium))
        Text("0%")
          .font(.system(size: 14, weight: .light))
          .padding(.leading, 20)
      }
      
      // MARK: - Images
      Group {
        Text("Images")
          .font(.system(size: 18, weight: .medium))
        HStack(spacing: 10) {
          Image("image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 120)
            .cornerRadius(5)
          
          Image("image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 120)
            .cornerRadius(5)
          
          Spacer()
        }
      }
      .padding(.top, 20)
    }
  }
  
  @ViewBuilder
  var content: some View {
      VStack {
        Text("2023")
          .font(.system(size: 18, weight: .bold))
          .padding(.horizontal, 10)
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
          .background(Color.gray.opacity(0.3))
          .foregroundColor(.white)
      
      ForEach(0...1, id: \.self) { _ in
        NavigationLink {
          // 누르면 영화에 대한 정보가 나와야 되서 post로 넘기려는데
          // Cannot convert value of type 'Int' to expected argument type 'Post' 다음과 같은 오류가 나옴
          // => 타입 캐스팅을 해야 된다느데 이해 x
        } label: {
          HStack {
            Image("image")
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: 60, height: 100)
              .cornerRadius(5)
            
            Text("Sugal Ng Puso")
              .font(.system(size: 18, weight: .bold))
              .foregroundColor(Color(.label))
            
            Spacer()
          }
        }
      }
    }
  }
  
  var body: some View {
    ScrollView {
      header
      content
    }
    .padding(.horizontal, 10)
    .navigationTitle("AJ Raval")
    .navigationBarTitleDisplayMode(.large)
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button {
          clickFanButton.toggle()
        } label: {
          Image(systemName: "star.circle")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 25, height: 25)
            .foregroundColor(clickFanButton ? .yellow : .white)
        }
      }
    }

  }
}
