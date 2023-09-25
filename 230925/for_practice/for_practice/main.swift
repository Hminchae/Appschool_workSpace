//
//  main.swift
//  for_practice
//
//  Created by 황민채 on 2023/09/25.
//

import Foundation

//print("Hello, World!")

//------------------------------------------------
//while 예제7
//------------------------------------------------

//var a = Int.random(in: 0...99)
//var b = Int.random(in: 0...99)
//
//print("=== plus game ===")
//print("\(a) + \(b) = ", terminator: " ")
//var answer = Int(readLine()!)!
//if answer == a + b {
//    print("Success")
//}else {
//    print("Fail")
//}

//------------------------------------------------
//while 예제7-1
//------------------------------------------------


//var a: Int = 0
//var b: Int = 0
//var again: String = "Y"
//var answer: Int = 0
//var flag: Bool = true
//
//
//// flag == true 이면 랜덤 돌리고 false 이면 랜덤 돌리지 않고 계속
//print("=== plus game ===")
//while again == "Y" {
//    if flag == true {
//        a = Int.random(in: 1...100)
//        b = Int.random(in: 1...100)
//    }
//    print("\(a) + \(b) = ", terminator: " ")
//    var answer = Int(readLine()!)!
//    if answer != a + b {
//        print("정답아님")
//        flag = false
//    }else {
//        flag = true
//        print("정답입니다!")
//    }
//    print("계속 하시겠습니까? (Y/N)", terminator: " ")
//    again = String(readLine()!)
//}
//print("종료되었습니다.")
        
        
        
//    print("계속 하시겠습니까? (Y/N)", terminator: " ")
//    again = String(readLine()!)
//    if again == "N"{
//        print("종료되었습니다.")
//        break
//    }
//}


//------------------------------------------------
//while 예제7-2
//------------------------------------------------

//
//var a = Int.random(in: 0...99)
//var b = Int.random(in: 0...99)
//var again: String = "Y"
//
//print("=== plus game ===")
//while again == "Y"{
//    print("\(a) + \(b) = ", terminator: " ")
//    var answer = Int(readLine()!)!
//    if answer == a + b {
//        print("Success")
//    }else {
//        print("Fail")
//    }
//    print("계속 하시겠습니까? (Y/N)", terminator: " ")
//    again = String(readLine()!)
//    if again == "N" {
//        print("종료되었습니다.")
//        break
//    }
//}


// 96 부터 53까지 출력
//var i = (53...96).reversed()
//for index in i {
//    print(index)
//}

//var i = (21...57)
//for index in i{
//    if index%2 == 1{
//        print(index)
//    }else {
//        continue
//    }
//}


//print("정수 입력: ", terminator: " ")
//var a = Int(readLine()!)!
//
//var result = (1...a)
//for index in result {
//    print(index)
//}


//------------------------------------------------
//for 예제 3 원하는 구구단
//------------------------------------------------

//for j in 1...9{
//    for i in 1...9{
//        print("\(j)*\(i)= \(j*i)")
//    }
//}
//------------------------------------------------
//for 예제 4 원하는 구구단
//------------------------------------------------

//print("단 입력: ", terminator: "")
//var a = Int(readLine()!)!
//
//for i in 1...9 {
//    print("\(a) * \(i) = \(a*i)")
//}

//------------------------------------------------
//for 예제 5 구구단
//------------------------------------------------

//for i in 1...9{
//    print("===\(i)단===")
//    for j in 1...9{
//        print("\(i) * \(j) = \(i*j)")
//    }
//
//}

//------------------------------------------------
//for 예제 6 구구단
//------------------------------------------------
//for i in 1...9{
//    print("\(i)단:", terminator: "")
//    for j in 1...9{
//        print("\(i) * \(j) = \(i*j)", terminator: "")
//    }
//    print("\n")
//}

//------------------------------------------------
//for 예제 6 - 가로 구구단
//------------------------------------------------
//for i in 1...9{
//    print("\(i)단: ", terminator: "")
//    for j in 1...9{
//        if i*j > 9{
//            print(" \(i) * \(j) = \(i*j)", terminator: " ")
//        }else{
//            print(" \(i) * \(j) =  \(i*j)", terminator: " ")
//        }
//    }
//    print("\n")
//
//}
//------------------------------------------------
//for 예제 7 선택받은 수의 약수
//------------------------------------------------
//print("정수입력: ",terminator:"")
//var n = Int(readLine()!)!
//print("\(n)의 약수 : ",terminator:"")
//for i in 1...n {
//    if n % i == 0 {
//        print("\(i)",terminator: "  ")
//    }
//}

//------------------------------------------------
//for 예제 8 2 ~ 30 약수
//------------------------------------------------

//for i in 2...30{
//    print("\(i)의 약수:", terminator:"")
//    for n in 1...i{
//        if i % n == 0 {
//            print("\(n)",terminator: " ")
//        }
//    }
//    print("\n")
//}

//------------------------------------------------
//for 예제 9 별찍기
//------------------------------------------------

//for j in 0...3{
//    for _ in 0...j{
//        print("*", terminator: "")
//    }
//    print("\n")
//}
//
//for a in (0...3).reversed(){
//    for _ in 0...a{
//        print("*", terminator: "")
//    }
//    print("\n")
//}


//for i in 0...4{
//    for _ in 0 ... (4-i){
//        print(" ", terminator: "")
//    }
//    for _ in 0...i {
//        print("**",terminator: "")
//    }
//    print()
//}
//for j in 0...4{
//    for _ in 0...j{
//        print(" ", terminator: "")
//    }
//    for _ in 0...(4-j) {
//        print("**",terminator: "")
//    }
//
//    print()
//}

//------------------------------------------------
//for 예제 369
//------------------------------------------------

//for i in 0...9{
//    for j in 0...9{
//        print("\(i)",terminator:"")
//        print("\(j)",terminator:"")
//        if String(i).contains("3") || String(i).contains("6") || String(i).contains("9") == true {
//            print("*",terminator: "")
//
//        }
//        if String(j).contains("3") || String(j).contains("6") || String(j).contains("9") == true{
//            print("*",terminator: "")
//            }
//        print()
//    }
//    }
