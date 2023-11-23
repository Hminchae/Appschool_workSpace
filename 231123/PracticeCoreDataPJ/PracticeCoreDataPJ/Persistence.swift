//
//  Persistence.swift
//  PracticeCoreDataPJ
//
//  Created by 황민채 on 11/23/23.
//

import CoreData

//MARK: 영구 컨트롤러 생성
//이것을 사용하여 View context에 대한 참조를 얻을 수 있음
//위 작업을 수행하는 이상적인 위치는 PracticeCoreDataPJApp.swift 파일안에서임
struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Products")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Container load failed: \(error)")
            }
        }
    }
}
