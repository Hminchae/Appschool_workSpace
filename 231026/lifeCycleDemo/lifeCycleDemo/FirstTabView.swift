//
//  FirstTabView.swift
//  lifeCycleDemo
//
//  Created by 황민채 on 10/26/23.
//

/**
 p.259
 보일 때, 감추어 질 때

 - onAppear() 수정자 : 뷰가 나타날 때 실행
 - onDisappear() 수정자 : 뷰가 사라질 때 실행
 
 
 
 --
 
# task() 수정자 p.232
 뷰를 만들 때 비동기 작업을 시작
 - 비동기 작업이 SwiftUI
 */

import SwiftUI

struct FirstTabView: View {
    @State var title = "View one"
    @State var isTitleView: Bool = false
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappeared triggered")
            })
            .task(priority: TaskPriority.background) {
                title = await changeTitle()
                isTitleView = await enableTitleView()
            }
        if isTitleView {
            Text("?금요일같은 목요일 ?")
                .font(.largeTitle)
        }
    }
    func enableTitleView() async -> Bool {
        sleep(5)
        return true
    }
    func changeTitle() async -> String {
        sleep(5)
        return "비동기 처리 완료"
    }
}

#Preview {
    FirstTabView()
}
