//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct Header : View {
    var text: LocalizedStringKey
    var hasBackButton: Bool = false
    var onBackArrowClick: () -> Void = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if(hasBackButton) {
                Button(action: onBackArrowClick) {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(.primaryNavyBlue)
                }
            }
            Text(text)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.notoSansBold24)
                .foregroundColor(.primaryNavyBlue)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Header(text: "Heading", hasBackButton: true, onBackArrowClick: {})
}
