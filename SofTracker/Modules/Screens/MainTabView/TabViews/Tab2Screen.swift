//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct Tab2Screen: View {
    var body: some View {
        VStack {
            Text(AppStrings.Tab) + Text("2")
            ProfileScreen()
        }
        .onAppear {
            AnalyticsManager.logScreenView(screenName: String(describing: Self.self))
        }
    }
}

#Preview {
    Tab2Screen()
}
