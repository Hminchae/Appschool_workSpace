//
//  main.swift
//  Swift_Sample
//
//  Created by 황민채 on 2023/09/22.
//

import Foundation

//------------------------------------------------
// 조건문 예제 12 - 계절
//------------------------------------------------
//var month: Int
//
//print("월 입력: " , terminator: "")
//month = Int(readLine()!)!
//
//switch month {
//case 12,1,2 :
//    print("\(month)월은 겨울입니다.")
//case 3, 4, 5 :
//    print("\(month)월은 봄입니다.")
//case 6, 7, 8 :
//    print("\(month)월은 여름입니다.")
//case 9, 10, 11 :
//    print("\(month)월은 가을입니다.")
//default : print("오류")
//}

//print("월 입력:", terminator: " ")
//var month = Int(readLine()!)!
//let seasons = ["겨울", "봄", "여름", "가을"]
//
//print("(\month)월은 (\seasons[(month/3)%4])입니다!")

//------------------------------------------------
//조건문 예제 13
//------------------------------------------------

//print("금액을 입력하세요.:", terminator: " ")
//var money = Int(readLine()!)!
//print("메뉴를 고르세요.")
//print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) :", terminator: " ")
//var menu = Int(readLine()!)!
//if menu == 1 {
//    print("잔돈: \(money - 800)원")
//}else if menu == 2{
//    print("잔돈: \(money - 500)원")
//}else {
//    print("잔돈: \(money - 1500)원")
//}

//------------------------------------------------
//조건문 예제 14 - 잔돈 부족
//------------------------------------------------

//입력 부
//print("금액을 입력하세요.:", terminator: " ")
//var money = Int(readLine()!)!
//print("메뉴를 고르세요.")
//print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) :", terminator: " ")
//var menu = Int(readLine()!)!
//
//var changes: Int
//
////잔돈 계산 부
//if menu == 1 {
//    changes = money - 800
//}else if menu == 2{
//    changes = money - 500
//}else {
//    changes = money - 1500
//}
////잔돈 출력 부
//
//if changes < 0 {
//    print("돈이 부족해요ㅜㅠ")
//}else{
//    print("잔돈: \(changes)원")
//}

//------------------------------------------------
// 조건문 예제 15 - 천원
//------------------------------------------------


////입력 부
//print("금액을 입력하세요.:", terminator: " ")
//var money = Int(readLine()!)!
//print("메뉴를 고르세요.")
//print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) :", terminator: " ")
//var menu = Int(readLine()!)!
//
//var changes: Int
//
////잔돈 계산 부
//if menu == 1 {
//    changes = money - 800
//}else if menu == 2{
//    changes = money - 500
//}else {
//    changes = money - 1500
//}
////잔돈 출력 부
//
//if changes < 0 {
//    print("돈이 부족해요ㅜㅠ")
//}else {
//    print("잔돈: \(changes)원")
//    print("천원: \(changes / 1000)개")
//}




//------------------------------------------------
//조건문 예제 16 - 천원, 오백원, 백원
//------------------------------------------------


////입력 부
//print("금액을 입력하세요.:", terminator: " ")
//var money = Int(readLine()!)!
//print("메뉴를 고르세요.")
//print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) :", terminator: " ")
//var menu = Int(readLine()!)!
//
//var changes: Int
//
////잔돈 계산 부
//if menu == 1 {
//    changes = money - 800
//}else if menu == 2{
//    changes = money - 500
//}else {
//    changes = money - 1500
//}
//
//var thousand: Int = changes / 1000
//var fivehundred: Int = (changes - thousand*1000)/500
//var hundred: Int = (changes - thousand*1000 - fivehundred * 500)/100
//
////잔돈 출력 부
//if changes < 0 {
//    print("돈이 부족해요ㅜㅠ")
//    print("잔돈: \(money)원")
//}else{
//    print("잔돈: \(changes)원")
//    print("천원: \(thousand)개")
//    print("오백원: \(fivehundred)개")
//    print("백원: \(hundred)개")
//}


//------------------------------------------------
//조건문 예제 17 -
//------------------------------------------------

//var num = 0
//repeat {
//    print("정수 입력: ", terminator: "")
//    num = Int(readLine()!)!
//} while (num < 10)
//print("종료되었습니다.")



//------------------------------------------------
//조건문 예제 17 - 다이어트 관리 프로그램
//------------------------------------------------

//print("현재 몸무게: ", terminator: "")
//var nowkg = Int(readLine()!)!
//print("목표 몸무게: ", terminator: "")
//var goalkg = Int(readLine()!)!
//
//var dietkg: Int = 0
//var i: Int = 0
//
//while i >= 0 {
//    i += 1
//    print("\(i)주차 감량 몸무게: ", terminator: "")
//    dietkg = Int(readLine()!)!
//    nowkg -= dietkg
//    if nowkg <= goalkg {
//        break
//    }
//}
//print("\(goalkg)달성! 축하합니다!!")



//------------------------------------------------
//조건문 예제 18 - 로그인
//------------------------------------------------

//let userID = "Hello"
//let password = 1234
//
//print("아이디를 입력해 주세요.: ", terminator: "")
//var getid = String(readLine()!)
//print("비밀번호를 입력해 주세요.: ", terminator: "")
//var getpw = Int(readLine()!)!
//
//
//getid == userID && getpw == password ? print("로그인 성공!"):print("아이디와 비밀번호가 잘못되었습니다.")
//

//------------------------------------------------
//조건문 예제 19 - 로그인 (while문 사용)
//------------------------------------------------

//let userID: String = "Hello"
//let password: Int = 1234
//
//var getid: String = ""
//var getpw: Int = 0
//
//while getid != userID || getpw != password {
//    print("아이디를 입력해 주세요.: ", terminator: "")
//    getid = String(readLine()!)
//    print("비밀번호를 입력해 주세요.: ", terminator: "")
//    getpw = Int(readLine()!)!
//    if getid == userID && getpw == password {
//        print("로그인 성공!")
//    }
//    else {
//        print("아이디와 비밀번호 다시 입력")
//        continue
//    }
//
//    }
//------------------------------------------------
//while 예제5 - 로그인 (while문 사용)
//------------------------------------------------
//let userID: String = "Hello"
//let password: Int = 1234
//
//var getid: String = ""
//var getpw: Int = 0
//var getyorn: String = ""
//
//while getid != userID || getpw != password {
//    print("아이디를 입력해 주세요.: ", terminator: "")
//    getid = String(readLine()!)
//    print("비밀번호를 입력해 주세요.: ", terminator: "")
//    getpw = Int(readLine()!)!
//    if getid == userID && getpw == password {
//        print("로그인 성공!")
//    }
//    else {
//        print("아이디와 비밀번호가 잘못되었습니다.")
//        print("계속 하시겠습니까?(Y/N)", terminator: "")
//            getyorn = String(readLine()!)
//        if getyorn == "Y" {
//        continue
//        }else {
//            print("종료되었습니다.")
//            break
//        }
//    }
//
//    }


//------------------------------------------------
//while 예제6 - 로그인 (while문 사용)
//------------------------------------------------


//var onemore: String = "Y"
//
//while onemore == "Y" {
//    print("첫 번째 정수를 입력하세요. :", terminator: " ")
//    var a = Int(readLine()!)!
//    print("두 번째 정수를 입력하세요. :", terminator: " ")
//    var b = Int(readLine()!)!
//    print("1. 더하기 2. 빼기 :", terminator: " ")
//    var oneortwo = Int(readLine()!)!
//    if oneortwo == 1 {
//        print("더하기 연산 결과는 \(a + b)입니다.")
//    }else {
//        print("빼기 연산 결과는 \(a - b)입니다.")
//    }
//    print("다시 실행 하시겠습니까? (Y/N)", terminator: " ")
//    onemore = String(readLine()!)
//    if onemore == "N" {
//        print("종료되었습니다.")
//        break
//        }
//
//    }
//
