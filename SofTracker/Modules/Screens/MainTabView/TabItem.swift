//
// Created by TMA on 02/20/25.
//
import Foundation
import SwiftUI

struct TabItem: View {
    var title: String
    var icon: String
    
    var body: some View{
        VStack{
            ZStack{
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            Text(title)
                .font(.notoSansRegular20)
        }
    }
}

#Preview {
    TabItem(title: "Home", icon: "house.circle.fill")
}
