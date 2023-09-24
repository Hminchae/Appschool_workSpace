//: [Previous](@previous)

import Foundation

//에제 6
//var hour, minute, second, x: Int
//
//print("초 입력: " , terminator: "")
//x = Int(readLine()!)!
//
//hour = x / 3600
//minute = (x - (hour * 3600))/60
//second = x - hour * 3600 - minute * 60
//
//
//print("\(hour)시 \(minute)분 \(second)초")


//예제 7 - 시급계산기

//var workinghour, overtime, overwage, wage : Int
//
//wage = 5000
//
//print("노동 시간 입력: " , terminator: "")
//workinghour = Int(readLine()!)!
//
//
//overtime = workinghour - 8
//workinghour -= overtime
//overwage = Int(Double(overtime) * 5000 * 1.5)
//
//
//print("총 임금은 \(workinghour * wage + overwage) 원 입니다.")


//예제 8 - 짝수 판별기

//var number: Int
//print("정수를 입력하세요: " , terminator: "")
//number = Int(readLine()!)!
//
//if number % 2 == 0 {
//    print("\(number)은 짝수입니다.")
//} else {
//    print("\(number)은 홀수입니다.")
//}
//
//예제 8 - 짝수 판별기(삼항연산자)
//
//var number: Int
//print("정수를 입력하세요: " , terminator: "")
//number = Int(readLine()!)!
//
//var result: String = number % 2 == 0 ?"짝수":"홀수"
//print("\(number)은 \(result) 입니다.")
//
//
//예제 9 - 두개의 정수를 입력받아 큰 수에서 작은 수를 뺀 결과를 출력(삼항연산자)
//
//var a, b : Int
//
//print("첫 번째 정수 입력:", terminator: "")
//a = Int(readLine()!)!
//print("두 번째 정수 입력:", terminator: "")
//b = Int(readLine()!)!
//
//var result: Int = a>=b ? a - b : b - a
//print("두 수의 차: ",result)


//예제 10 - 농구공 상자 - 상자 하나 농구공 5개
//
//var basketball: Int
//print("농구공의 개수를 입력하세요:", terminator: "")
//basketball = Int(readLine()!)!
//var result: Bool = basketball%5==0 ? true : false
//if result == true {
//    print("필요한 상자의 수:", basketball / 5 )
//} else {
//    print("필요한 상자의 수:", basketball / 5 + 1 )
//}
//--------------------------------------------
//조건문 예제01
//
//Int 타입의 변수 age를 선언하고 키보드로 값을 입력받으세요
//만약 age가 20보다 크거나 같다면 “성인입니다.” 라고
//출력하는 프로그램을 만들어 보세요.
//
//var age: Int
//print("나이 입력하셈: ", terminator:"")
//age = Int(readLine()!)!
//if age >= 20 {
//    print("성인입니다.")
//}else {
//    print("미성년자입니다.")
//}
//---------------------------------------------
//조건문 예제02
//var num: Int
//print("숫자 입력하셈: ", terminator:"")
//num = Int(readLine()!)!
//
//if (num % 3 == 0)&&(num % 5 == 0){
//    print("3과 5의 배수입니다.")
//}else{
//    print("오류")
//
//}
//---------------------------------------------
//조건문 예제03
//var grade: Int
//print("점수 입력하셈: ", terminator:"")
//grade = Int(readLine()!)!
//
//if grade >= 60 {
//    print("합격입니다.")
//}else{
//    print("불합격입니다.")
//}
//---------------------------------------------
//조건문 예제04
//var num: Int
//print("정수 입력: ", terminator:"")
//num = Int(readLine()!)!
//switch num {
//case 0... :
//    print("\(num) 양수입니다.")
//case 0 :
//    print("0 입니다.")
//case ...0 :
//    print("\(num) 음수입니다.")
//default:
//    print("다시입력")
//}
//---------------------------------------------
//조건문 예제05
//var num1, num2: Int
//print("정수1 입력: ", terminator:"")
//num1 = Int(readLine()!)!
//print("정수2 입력: ", terminator:"")
//num2 = Int(readLine()!)!
//
//var result: Int = num1>=num2 ? num1 : num2
//print("큰 수: ",result)
//
//---------------------------------------------
//조건문 예제06
//var a, b, c, d, e: Int
//print("1과목 소프트웨어 설계:", terminator:"")
//a = Int(readLine()!)!
//print("2과목 소프트웨어 개발:", terminator:"")
//b = Int(readLine()!)!
//print("3과목 데이터베이스 구축:", terminator:"")
//c = Int(readLine()!)!
//print("4과목 프로그래밍 언어 활용:", terminator:"")
//d = Int(readLine()!)!
//print("5과목 정보시스템 구축관리:", terminator:"")
//e = Int(readLine()!)!
//
//var arr: [Int]=[a,b,c,d,e]
//let total = arr.reduce(0, +)
//
//if total < 60 || a < 8 || b < 8 || c < 8 || d < 8 || e < 8 {
//    print("불합격이셈")
//}else {
//    print("합격이셈")
//}
//---------------------------------------------
//조건문 예제07
//var age, people: Int
//print("나이를 말씀해주세요:", terminator:"")
//age = Int(readLine()!)!
//print("인원수를 말씀해주세요:", terminator:"")
//people = Int(readLine()!)!
//
//if age > 20 {
//    print("총 \(people * 5000)원 입니다.")
//}else{
//    print("총 \(people * 2500)원 입니다.")
//}
//---------------------------------------------
//조건문 예제08
//var num: Double
//print("구매하려는 상품 갯수를 입력하세요:", terminator:"")
//num = Double(readLine()!)!
//
//if num < 11{
//    print("가격은 \(num * 10000)원 입니다.")
//}else {
//    var result = Int(num * 10000 * 0.9)
//    print("가격은 \(result)원 입니다.")
//}
//---------------------------------------------
//조건문 예제09
//var grade: Int
//print("점수를 입력하세요.:", terminator:"")
//grade = Int(readLine()!)!
//switch grade{
//case 90... :
//    print("A학점이셈")
//case 80...90 :
//    print("B학점이셈")
//case 70...80 :
//    print("C학점이셈")
//default :
//    print("F학점이셈")
//}
//
//---------------------------------------------
//조건문 예제10

//print("user:", terminator:"")
//let data = readLine()!
//
//switch data{
//case "안녕하세요." :
//    print("mac: 네, 안녕하세요!")
//case "반가워요." :
//    print("mac: 네, 반가워요!")
//case "수고하세요." :
//    print("mac: 네, 수고하세요!")
//default :
//    print("잘못 입력하셨습니다.")
//}



let arrX = Array(x)
