//
//  TimerData.swift
//  ObservableDemo
//
//  Created by 황민채 on 10/29/23.
//

import SwiftUI
import Combine

class TimerData: ObservableObject { //프로토콜
    @Published var timeCount = 0
    var timer : Timer? //
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector:  #selector(timerDidFire), //매 초 timerDidFire를 호출하도록 구성하는 초기화
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    } // 변수 할당된 값 증가 메서드
    func resetCount() {
        timeCount = 0
    } // 0 초기화 메서드
}
