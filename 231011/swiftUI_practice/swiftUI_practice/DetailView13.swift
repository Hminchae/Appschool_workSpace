//
//  DetailView13.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/18.
//

import SwiftUI

struct DetailView13: View {
    var body: some View {
        VStack{
            Button(action: {
                Task { //동기 함수에서 비동기 함수 호출
                    await doSomething()
                }
            }, label: {
                Text("Do Something")
            })
        }.padding(20)
    }
    //async-let 바인딩
    //비동기 함수를 호출하고 주변의 코드와 병렬로 실행하려면 (동시 실행)
    //상수를 정의할 때 let 앞에 async를 작성하고, 상수를 사용할 때마다 await를 작성
    //데이터 경쟁 피하기
    //동시에 데이터에 접근하는 여러 작업은 데이터 경쟁(Data race)조건이 발생할 위험이 있음.
    //여러 작업이 동시에, 동일한 데이터에 접근하려고 시도하면서 데이터 오류가 발생함
    // -> 사용방법은
    //1. 반환 타입을 변경한다.
    //2. for - await 표현식을 사용하여 비동기적으로 반환되는
    //동시 작업에서 반환되는 값의 수신을 기다려서 처리함
    //일련의 데이터가 !AsyncSequence 프로토콜! 준수가 필수 요구사항
    func doSomething() async {
        var timeStamps: [Int: Date] = [:]
        print("Start \(Date())")
        //반환 타입을 변경: Void.self -> (Int, Date)
        await withTaskGroup(of: (Int, Date).self) {group in
            for i in 1...5 {
                group.addTask {
                    return (i, await takeTooLong())
                }
            }
            // 2. for - await 표현식을 사용하여 비동기적으로 반환되는
            //동시 작업에서 반환되는 값의 수신을 기다려서 처리함
            //일련의 데이터가 AsyncSequence 프로토콜 준수가 필수 요구사항
            
            for await (task, date) in group {
                timeStamps[task] = date
            }
            
        }
            //작업 그룹이 종료된 후 저장된 timeStamps 딕셔너리 항목을 출력
        for (task, date) in timeStamps {
            print("Task = \(task), Date = \(date)")

        }
        print("End \(Date())")
    }
    func takeTooLong() async -> Date {
        sleep(UInt32.random(in: 1...5))
        print("Async task complted at \(Date())")
        return Date()
    }
}
                   
                   
struct DetailView13_Previews: PreviewProvider {
    static var previews: some View {
        DetailView13()
    }
}
