//
//  ContentView.swift
//  PracticeCoreDataPJ
//
//  Created by 황민채 on 11/23/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //MARK: 인터페이스를. 설계하기 위해 뷰를 추가하기전에 아래와 같은 변경 필요
    @State var id: String = ""
    @State var pw: String = ""
    
    @Environment(\.manageObjectContext) private var viewContext
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
