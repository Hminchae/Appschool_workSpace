//
//  DetailView15.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/18.
//
import SwiftUI

struct DetailView15: View {
    var body: some View {
        Button(action: {
            // 동기 함수에서 비동기 함수 호출
            Task {
               // await doSomething()
            }
        }, label: {
            Text("Do Something")
        })
    }

//    func doSomething() async {
//        var totalSum: [Int: Int] = [:]
//        var indexlist = [0, 50]
//
//        async let result1 = sumFrom(indexlist[0] + 1, indexlist[0] + 50)
//        async let result2 = sumFrom(indexlist[1] + 1, indexlist[1] + 50)
//        // 결과를 출력
//        var a = await result1
//        var b = await result2
//        print("\(a + b)")
//    }

    // s부터 e까지의 합을 구하는 비동기 함수
    func sumFrom(_ s: Int, _ e: Int) async -> Int {
        var sum = 0
        for i in s...e {
            sum += i
        }
        return sum
    }
}

struct DetailView15_Previews: PreviewProvider {
    static var previews: some View {
        DetailView15()
    }
}
