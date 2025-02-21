//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct UserInfoView: View {
    @Binding var name: String
    @Binding var email: String

    var body: some View {
        VStack {
            Image(systemName: "person.crop.rectangle.fill")
                .resizable()
                .frame(width: 150, height: 100)
                .clipShape(Circle())
            TextKeyValueView(key: AppStrings.Name, value: name)
            TextKeyValueView(key: AppStrings.Email, value: email)
        }
        .foregroundColor(.primaryNavyBlue)
    }
}

#Preview {
    UserInfoView(name: Binding.constant("name"), email: Binding.constant("email"))
}
