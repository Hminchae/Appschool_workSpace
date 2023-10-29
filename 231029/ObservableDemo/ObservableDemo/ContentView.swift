//
//  ContentView.swift
//  ObservableDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI

struct ContentView: View { //content뷰와 secondView 모두 동일한 observable 객체 인스턴스를 구독하고 있음
    
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                NavigationLink(destination: SecondView()) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
        .environmentObject(timerData)
        // 이 수정자를 추가하여 timerData 인스언스를 뷰 계층 환경에 삽입함
    }
    func resetCount() {
        timerData.resetCount()
    }
}

#Preview {
    ContentView()
}
