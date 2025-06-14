//
//  RootNavigationView.swift
//  EKO-iOS
//
//  Created by mini on 5/28/25.
//

import SwiftUI

struct RootNavigationView: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    @State private var isPressing: Bool = false
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            MainView()
            
            .navigationDestination(for: AppRoute.self) { route in
                switch route {
                case .main: MainView()
                }
            }
        }
    }}

#Preview {
    RootNavigationView()
        .environmentObject(AppCoordinator())
}
