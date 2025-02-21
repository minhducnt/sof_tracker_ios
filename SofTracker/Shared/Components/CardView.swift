//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct CardView: View {
    var title = "Title"
    var subTitle = "SubTitle"
    var backgroundColor = Color.background
    var cornerRadius = 10.0
    var shadowRadius = 5.0
    var infoAction: () -> Void = {}

    var body: some View {
        HStack {
            VStack {
                Spacer()
                Image(systemName: "sun.min")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 61)
                    .clipShape(Circle())
                    .foregroundColor(.primarySof)
                Spacer()
            }
            
            VStack(spacing: 20) {
                Spacer()
                Text(title)
                    .font(.notoSansBold20)
                    .foregroundColor(.primarySof)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(subTitle)
                    .font(.notoSansMedium16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.secondarySof)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
            VStack {
                
                Image(systemName: "info.circle")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.secondarySof)
                Spacer()
            }
        }
        .frame(height: 80)
        .padding()
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .shadow(color: Color.gray.opacity(0.5), radius: shadowRadius)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CardView(infoAction: {})
}
