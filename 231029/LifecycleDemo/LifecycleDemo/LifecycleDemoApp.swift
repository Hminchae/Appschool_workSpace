//
//  LifecycleDemoApp.swift
//  LifecycleDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI

@main
struct LifecycleDemoApp: App {
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase, perform: { phase in
            switch phase {
            case .active:
                print("Active") // 화면이 포그라운드에 있고, 사용자에게 표시되며, 사용자 인터렉션에 반응함
            case .inactive:
                print("Inactive") // 화면이 포그라운드에 있고. 사용자에게 표시되지만 사용자의 인터랙션에 반응하지 않음
            case .background:
                print("Background") // 사용자에게 화면이 표시되지 않음
            default:
                print("Unknown scenephase")
            }
        })
    }
}
