//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct Tab1Screen: View {
    var body: some View {
        VStack {
            Text(AppStrings.Tab) + Text("1")
            WeatherScreen()  // Use and Delete Screen , This should be removed
        }
        .onAppear {
            AnalyticsManager.logScreenView(screenName: String(describing: Self.self))
        }
    }
}

#Preview {
    Tab1Screen()
}
