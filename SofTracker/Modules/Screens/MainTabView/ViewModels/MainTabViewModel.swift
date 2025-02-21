//
// Created by TMA on 02/20/25.
//
import Foundation
import SwiftUI

class MainTabViewModel: ObservableObject {
    @Published var selectedTab: Tab = .tab1
}

enum Tab: CaseIterable{
      case tab1
      case tab2
}
