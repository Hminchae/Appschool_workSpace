//
//  PracticeCoreDataPJApp.swift
//  PracticeCoreDataPJ
//
//  Created by 황민채 on 11/23/23.
//

import SwiftUI

@main
struct PracticeCoreDataPJApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                //MARK: 뷰 계층 구조에 환경객체로 삽입함
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}
