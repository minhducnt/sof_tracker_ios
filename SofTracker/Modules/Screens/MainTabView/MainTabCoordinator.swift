//
// Created by TMA on 02/20/25.
//
import SwiftUI

struct MainTabCoordinator: View {
    @StateObject var viewModel: MainTabViewModel = .init()
    @State var presentSideMenu: Bool = false
    var edgeTransition: AnyTransition = .move(edge: .leading)
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                // MARK: - Top Side Menu

                topSideMenu
                
                // MARK: - Tab View

                tabView
            }
            
            if presentSideMenu {
                SideMenuView(selectedSideMenuTab: $viewModel.selectedTab, presentSideMenu: $presentSideMenu)
                    .transition(edgeTransition)
                    .animation(.easeInOut, value: presentSideMenu)
            }
        }
    }
    
    // MARK: - View
    
    var tabView: some View {
        TabView(
            selection: $viewModel.selectedTab,
            content: {
                Tab1Screen().tabItem {
                    TabItem(
                        title: "Home",
                        icon: viewModel.selectedTab == .tab1 ? "house.fill" : "house"
                    )
                }.tag(Tab.tab1)
                
                Tab2Screen().tabItem {
                    TabItem(
                        title: "Profile",
                        icon: viewModel.selectedTab == .tab2 ? "person.fill" : "person"
                    )
                }.tag(Tab.tab2)
            }
        )
        .accentColor(.primarySof)
        .onAppear {
            withAnimation {
                UITabBar.appearance().unselectedItemTintColor = UIColor(.gray.opacity(0.5))
            }
        }
        .gesture(
            DragGesture()
                .onEnded { value in
                    let horizontalAmount = value.translation.width
                            
                    if horizontalAmount < -50 {
                        viewModel.switchToNextTab()
                    } else if horizontalAmount > 50 {
                        viewModel.switchToPreviousTab()
                    }
                }
        )
    }
    
    var topSideMenu: some View {
        HStack {
            Button {
                withAnimation {
                    AnalyticsManager.logButtonClickEvent(buttonType: .secondary, label: "Side menu")
                    presentSideMenu = true
                }
            } label: {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .foregroundColor(.primarySof)
            .padding()
            
            Spacer()
            
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MainTabCoordinator()
}
