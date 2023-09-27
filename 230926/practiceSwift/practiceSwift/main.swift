//
//  main.swift
//  practiceSwift
//
//  Created by 황민채 on 2023/09/26.
//
import Foundation

//print("Hello, World!")

//------------------------------------------------
//함수 예제 1
//------------------------------------------------

//func addNumber(a: Int, b: Int){
//    print("1번째 수: \(a)")
//    print("2번째 수: \(b)")
//    print("연산결과: \(a+b)")
//}
//
//addNumber(a: 30, b: 5)

//------------------------------------------------
//함수 예제 2
//------------------------------------------------

//func largerNumbers(a: Int, b: Int){
//    print("1번째 수: \(a)")
//    print("2번째 수: \(b)")
//    if a >= b{
//        print("큰 수 확인: \(a)")
//    }else if a == b{
//        print("큰 수 확인: 0")
//    }else {
//        print("큰 수 확인: \(b)")
//
//    }
//}
//
//largerNumbers(a: 30, b: 5)

//------------------------------------------------
//함수 예제 3
//------------------------------------------------
//func close10(a: Int, b: Int){
//    let x = a - 10
//    let xx = x < 0 ? -x : x
//    let y = b - 10
//    let yy = y < 0 ? -y : y
//
//    if  xx > yy {
//        print(b)
//    }else if xx < yy {
//        print(a)
//    }else{
//        print(0)
//    }
//}
//close10(a: 8, b: 12)

//------------------------------------------------
//함수 예제 4
//------------------------------------------------
//func powerN(base: Float, n: Float){
//    print(Int(pow(base,n)))
//}
//
//powerN(base: 2, n: 3)

//------------------------------------------------
//함수 예제 5
//------------------------------------------------
//func getAbsoluteValue(a: Int, b:Int)-> Int{
//    let x: Int = a - b
//    return x < 0 ? -x : x
//}
//print("1번째 수:",terminator: "")
//var num1: Int = Int(readLine()!)!
//print("2번째 수:",terminator: "")
//var num2: Int = Int(readLine()!)!
//print("결과 확인:",getAbsoluteValue(a: num1,b: num2))

//------------------------------------------------
//함수 예제 6
//------------------------------------------------
//func isDivide(a: Int, b: Int)->Bool{
//    if a % b == 0{
//        return true
//    }else {
//        return false
//    }
//}
//print("1번째 수:",terminator: "")
//var num1: Int = Int(readLine()!)!
//print("2번째 수:",terminator: "")
//var num2: Int = Int(readLine()!)!
//print("결과 확인:",isDivide(a: num1,b: num2))

//func isDivide (a: Int, b: Int) -> Bool {
//    if b == 0 {
//        return false
//    }
//    return (a % b == 0)
//}
//
//let a: Int = 3
//let b: Int = 0
//
//let c: Bool = isDivide(a: a, b: b)
//print(c)

//------------------------------------------------
//함수 예제 7
//------------------------------------------------
//func getDivisor(a: Int){
//    for i in 1...a{
//        if a % i == 0{
//            print("\(i)", terminator: " ")
//        }else {
//            continue
//        }
//    }
//}
//print("정수 입력:",terminator: "")
//var num1: Int = Int(readLine()!)!
//print("결과 확인: ",terminator: "")
//getDivisor(a: num1)

//------------------------------------------------
//함수 예제 8 -> 못함
//------------------------------------------------

//func getSumOfDivisors (a: Int) -> Int {
//    var sum = 0
//    for i in 1...a {
//        if isDivide(a: a, b: i) {
//            sum += i
//        }
//    }
//    return sum
//}
//
//let a: Int = 10
//let c: Int = getSumOfDivisors(a: a)
//print("\(a)의 약수의 합:", c)

//------------------------------------------------
//함수 예제 9 - 완전수
//------------------------------------------------
//func getPerfectNumber (_ startValue : Int,_ endValue : Int) -> String{
//    var result:String = ""
//    for i in stride(from: startValue, through: endValue, by: 1){
//        var plus: Int = 0
//        for j in stride(from: 1, through: i-1, by: 1){
//            i%j == 0 ? plus += j : nil
//        }
//        //합이 약수와 같다면.
//        plus == i ? result += "\(String(i)) " : nil
//    }
//    return String(result)
//
//}
//var startValue: Int = 2
//var endValue: Int = 1000
//print("\(startValue)~\(endValue)까지의 완전수: \(getPerfectNumber(startValue,endValue))")

//------------------------------------------------
//함수 예제 10
//------------------------------------------------
//func getprimeNumber(startValue: Int, endValue: Int) {
//    let arr = [startValue ... endValue]
//    var result: [Int]
//    for i in arr {
//        ret
//    }
//}



//class PiggyBank{
//    var bankmoney: Int = 0
//    var size = 100000000
//
////    init(money: Int){
////        bankmoney = money
////    }
//
//    func deposit(money: Int){
//        bankmoney += money
//        print("\(money)원이 입금 되었습니다")
//        print("현재 잔액: \(bankmoney)")
//    }
//    func withdraw(money: Int){
//        bankmoney -= money
//        print("\(money)원이 출금 되었습니다")
//        print("현재 잔액: \(bankmoney)")
//    }
//    func showmoney(){
//        print("현재 잔액: \(bankmoney)")
//    }
//
//}
//var pb = PiggyBank()
//pb.deposit(money: 4000)
//pb.withdraw(money: 2000)
//pb.showmoney()

//------------------------------------------------
//class 예제 01~03 - 학생 정보 관리
//------------------------------------------------
//
//class Student{
//    let name: String
//    let number: String
//    let age: Int
//    let scoreSwift: Int
//    let scoreiOS: Int
//    let scoreWeb: Int
//
//    init(name: String, number: String, age: Int, scoreSwift: Int, scoreiOS: Int, scoreWeb: Int) {
//        self.name = name
//        self.number = number
//        self.age = age
//        self.scoreSwift = scoreSwift
//        self.scoreiOS = scoreiOS
//        self.scoreWeb = scoreWeb
//    }
//    func show(){
//        print("\(name)님 안녕하세요.")
//        print("[\(number),\(age)살]")
//        print ("\(name)님의 Swift 점수는 \(scoreSwift)점 입니다.")
//        print("\(name)님의 iOS 점수는 \(scoreiOS)점 입니다.")
//        print("\(name)님의 Web 점수는 \(scoreWeb)점 입니다.")
//    }
//}
//
//var student1 = Student(name: "홍길동", number:"20200677", age: 22, scoreSwift: 50,scoreiOS: 89, scoreWeb: 77)
//var student2 = Student(name: "김영희", number:"20190541", age: 26, scoreSwift: 90,scoreiOS: 85, scoreWeb: 70)
//
//student1.show()
//student2.show()


//------------------------------------------------
//class 예제 04 - 학생 정보 관리
//------------------------------------------------

//class Person{
//    var name: String
//    var age: Int
//    //우왕 !!!!!!!
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }//이거요? 이것도 메소드?아하..!
//
//    func getName()->String{
//        return self.name
//    }
//    func setName(newname: String){
//        self.name = newname
//    }
//    func getAge()->Int{
//        return self.age
//    }
//    func setAge(newage: Int){
//        self.age = newage
//    }
//}
//
//
//var person1 = Person(name: "홍길동", age: 25)
//var person2 = Person(name: "김영희", age: 27)
//
//print("str 1 객체 학생 이름:\(person1.getName()) 나이: \(person1.getAge())")
//print("str 2 객체 학생 이름:\(person2.getName()) 나이: \(person2.getAge())")


//------------------------------------------------
//class 예제 05 - 학생 정보 관리
//------------------------------------------------
//class Calculator {
//    var num1: Int
//    var num2: Int
//    init(num1: Int, num2: Int) {
//        self.num1 = num1
//        self.num2 = num2
//    }
//    func setNum1(new: Int){
//        self.num1 = new
//    }
//    func setNum2(new: Int){
//        self.num2 = new
//    }
//    func sum() -> Int{
//        return self.num1 + self.num2
//    }
//    func sub() -> Int{
//        return self.num1 - self.num2
//    }
//    func mul() -> Int{
//        return self.num1 * self.num2
//    }
//    func div() -> Double{
//        return Double(self.num1) / Double(self.num2)
//    }
//
//}
////요 밑에 행동
//var cal = Calculator(num1: 75, num2: 5)
//
//print(cal.sum())
//print(cal.sub())
//print(cal.mul())
//print(cal.div())

//----------------------------------------------------------

//class Coffee{
//    var name: String
//    var ingredient: [String]
//    var needMilk: Bool
//    init(name: String, ingredient: [String], needMilk: Bool) {
//        self.name = name
//        self.ingredient = ingredient
//        self.needMilk = needMilk
//    }
//
//    func getname()->String{
//        return self.name
//    }
//    func setIngredient(new: String){
//        self.ingredient.append(new)
//    }
//    func pourmilk(){
//        if self.needMilk == true{
//            print("그리고 우유 넣으세용")
//                  }else {
//                print("그리고 우유 넣지 마세요!")
//            }
//    }
//    func readrecipe(){
//        if self.ingredient.count == 1 {
//            print("\(self.ingredient[0]) 넣으세요.")
//        }else {
//            print("\(name)은 \(self.ingredient[0])랑 \(self.ingredient[1]) 넣으세요.")
//        }
//
//    }
//}
//
//var menu1 = Coffee(name:"에스프레쏘",ingredient:["에스프레쏘"],needMilk: false)
//var menu2 = Coffee(name:"카페모카",ingredient:["에스프레쏘","초콜릿"],needMilk: true)
//var menu3 = Coffee(name:"카푸치노",ingredient:["에스프레쏘","시나몬"],needMilk: true)
//var menu4 = Coffee(name:"바닐라라떼",ingredient:["에스프레쏘","바닐라"],needMilk: true)
//var menu5 = Coffee(name:"고구마라떼",ingredient:["고구마","시럽"],needMilk: true)
//var menu6 = Coffee(name:"인스타라떼",ingredient:["에스프레쏘","인스타그램"],needMilk: true)
//var menu7 = Coffee(name:"자몽에이드",ingredient:["자몽청","탄산수"],needMilk: false)
//
//menu6.readrecipe()
//menu6.pourmilk()

