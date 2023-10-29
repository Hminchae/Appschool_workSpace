//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI

struct FirstTabView: View {
    @State var title = "View One"
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("OnAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappered triggerd")
            })
            .task(priority: .background) {
                title = await changeTitle()
            }
    }
    func changeTitle() async -> String { //1. 함수 호출
        sleep(5)
        return "Async task complete"
    }
}

#Preview {
    FirstTabView()
}
