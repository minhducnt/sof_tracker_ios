//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct TextKeyValueView: View {
    var key: LocalizedStringKey
    var value: String

    var body: some View {
        HStack {
            Text(key) + Text(":")
            Text(value)
        }.frame(alignment: .leading)
    }
}

#Preview {
    TextKeyValueView(key: "Name", value: "User Name")
}
