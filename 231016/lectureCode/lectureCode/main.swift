//
//  main.swift
//  lectureCode
//
//  Created by 황민채 on 2023/10/16.
//

import Foundation
//import SwiftUI


//var greeting = "Hello, playground"
//
//class BankAccount {
//    var accountBalance: Float = 0.0
//    var accountNumber: Int = 0
//
//    //클래스의 인스턴스 초기화
//    init() {
//    }
//    init(balance: Float, number: Int) {
//        self.accountBalance = balance
//        self.accountNumber = number
//    }
//
//
//
//    //인스턴스 메서드
//    func diplayBalance() {
//        print("Number \(accountNumber)")
//        print("Current balance is \(accountNumber)")
//
//    }
//}
//
//let account1 = BankAccount(balance: 100.0, number: 1)
//account1.diplayBalance()
//
//let account2 = BankAccount(balance: 500.0, number: 1)
//account2.diplayBalance()
//account2.accountNumber
//
//
//상속 예제 06

//class Animal {
//    var name: String = ""
//    init(name: String) {
//        self.name = name
//    }
//    func makeSound() {
//        print("?",terminator: " ")
//    }
//}
//
//class Cat: Animal {
//
//    override func makeSound() {
//        super.makeSound()
//        print("야옹")
//    }
//}
//
//class Dog: Animal {
//    override func makeSound() {
//        super.makeSound()
//        print("멍멍")
//    }
//}
//
//let cat: Animal = Cat(name: "나비")
//let dog: Animal = Dog(name: "바둑")
//dump(cat)
//cat.makeSound()
//dog.makeSound()
//
//
class Person {
    var name: String = ""
    var age: Int = 0
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func introduce()  {
        print("저는 \(name)이고, \(age)살 입니다",terminator: "")
    }

}

class Student: Person {
    var grade: Int = 0
    var classNumber: Int = 0
    init(name: String, age: Int, grade: Int, classNumber: Int) {
            self.grade = grade
            self.classNumber = classNumber
            
            super.init(name: name, age: age)
        }
    override func introduce() {
        super.introduce()
        print("저는 \(grade)학년 \(classNumber)반 입니다.")
    }
}

class Teacher: Person {
    var subject: String = ""
    init(name: String, age: Int, subject: String) {
        self.subject = subject
        
        super.init(name: name, age: age)
    }
    override func introduce() {
        super.introduce() // 부모꺼 프린트
        print("저는 \(subject)선생님입니다.")
    }
}

let student: Person = Student(name: "민수", age: 15, grade: 2, classNumber: 3)
let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
student.introduce() // 저는 민수이고, 15살입니다. 저는 2학년 3반입니다.
teacher.introduce() // 저는 영희이고, 25살입니다. 저는 수학 선생님입니다.


//enum Weekday {
//    case mon
//    case tue
//    case wed
//    case thu, fri, sat, sun
//}
//
//var day: Weekday = Weekday.mon
//day = .tue
//print(day)
//
//
////C 언어의 enum처럼 정수값을 가질수도 있음
////lawValue 사용하면 되는데
////case 별로 각각 다른 값을 가져야한다.
//
//enum Fruit: Int {
//    case apple = 0
//    case grape = 1
//    case peach
//}
//
//print("\(Fruit.peach.rawValue)")
////정수뿐만 아니라 Hashable 모든 값 지정가능
//
////원시값을 통한 초기화

class Figure {
    var color: String = ""
    init(color: String) {
        self.color = color
    }
    func area() {
    }
}
class Triangle: Figure {
    var base: Int = 0
    var height: Int = 0
    init(color: String, base: Int, height: Int) {
        self.base = base
        self.height = height
        
        super.init(color: color)
    }
    override func area() {
        print("\(base * height / 2)")
    }
}
class Rectangle: Figure {
    var width: Int = 0
    var length: Int = 0
    init(color: String, width: Int, length: Int) {
        self.width = width
        self.length = length
        
        super.init(color: color)
    }
    override func area() {
        print("\(width * length)")
    }
}

let triangle = Triangle(color: "red", base: 3, height: 4)
let rectangle = Rectangle(color: "blue", width: 5, length: 6)
triangle.area() // 6.0
rectangle.area() // 30.0


//extension 클래스/구조체 이름{
//새로운 기능 코드ㅡ
//}


//상속 예제 11
class O {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class N: O {
    override var name: String {
        get {
            return "N"
        }
        set {
            super.name = newValue
        }
    }
}

var n = N(name: "A")
print(n.name)

// 정답 X

//상속 예제 11
// 다음 코드에서 P 클래스는 Q 클래스의 메서드를 오버로딩할 수 있다. (O)
class Q {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }

    func add(a: Double, b: Double) -> Double {
        return a + b
    }
}

class P: Q {
    override func add(a: Int, b: Int) -> Int {
        return a + b + 1
    }
}

var a = P()
print(a.add(a: 8, b: 9))


//상속 예제 12
// 다음 코드에서 R 클래스는 S 클래스와 T 클래스를 모두 타입 캐스팅할 수 있다. (X)
class R {

}

class S {

}

class T {

}

let r = R()
let s = S()
let t = T()


//상속 예제 13
// 다음 코드에서 U 클래스는 V 클래스의 메서드를 final로 선언하여 자식 클래스가 오버라이드할 수 없게 할 수 있다. (O)

//서브클래스에서 특정 method, property, subscript 가 오버라이드 되지 않도록 하기위해서 final 키워드를 사용한다. final 키워드를 붙인 method, property, subscript 를 서브클래스에서 오버라이드하면, 컴파일타임 에러가 발생한다. class 전체에 대해 final 키워드를 붙이는 경우, 서브클래스를 만드려고 하면 컴파일타임 에러가 발생한다.
class V {
    final func sayBye() {
        print("Bye")
    }
}

//class U: V {
//    override func sayBye() {
//        print("Bye Bye Bye")
//    }
//}

class Vehicle {
    var model: String = "모델 몰 ? 루"
    var color: String = "색상 몰 ? 루"
    init(model: String, color: String) {
        self.model = model
        self.color = color
    }
    func drive() {
        print("\(model) \(color)", terminator: " ")
    }
}

class Car: Vehicle {
    var doorNumber: Int = 0
    init(model: String, color: String, doorNumber: Int) {
        self.doorNumber = doorNumber
        super.init(model: model, color: color)
    }
    override func drive() {
        super.drive()
        print("자동차가 \(doorNumber)개의 문을 열고 달립니다.")
    }
}

class Motorcycle: Vehicle {
    var helmet: Bool = false
    init(model: String, color: String, helmet: Bool) {
        self.helmet = helmet
        super.init(model: model, color: color)
    }
    override func drive() {
        super.drive()
        if helmet == true {
            print("오토바이가 헬멧을 쓰고 달립니다.")
        }else {
            print("오토바이가 헬멧을 쓰지않고 달립니다.")
        }
    }
}


// 예시
let car: Vehicle = Car(model: "소나타", color: "검정", doorNumber: 4)
let motorcycle: Vehicle = Motorcycle(model: "니노", color: "노랑", helmet: true)
car.drive() // 소나타 검정 자동차가 4개의 문을 열고 달립니다.
motorcycle.drive() // 니노 노랑 오토바이가 헬멧을 쓰고 달립니다. or // ~오토바이가 헬멧을 쓰지 않고 달립니다


//상속 예제 15
//음식 클래스를 정의하고, 피자와 파스타 클래스를 음식 클래스로부터 상속받아서 구현하세요.
//
//음식 클래스는 이름과 가격을 속성으로 가지고 있습니다.
//
//피자 클래스는 토핑을, 파스타 클래스는 소스를 추가로 속성으로 가지고 있습니다.
//
//피자와 파스타 클래스는 각각 주문하는 메서드를 오버라이딩해야 합니다.
class Food {
    var name: String = "음식이름 몰?루"
    var price: Int = 0
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    func order() {
        print("가격은 \(price) 입니다.")
    }
}
class Pizza: Food {
    var topping: String = "토핑 몰?루"
    init(name: String, price: Int, topping: String) {
        self.topping = topping
        super.init(name: name, price: price)
    }
    override func order() {
        print("\(name)에 \(topping)토핑을 선택하셨습니다.", terminator: " ")
        super.order()
    }
}
class Pasta: Food {
    var sauce: String = "소스 몰?루"
    init(name: String, price: Int, sauce: String) {
        self.sauce = sauce
        super.init(name: name, price: price)
    }
    override func order() {
        print("\(name)에 \(sauce)토핑을 선택하셨습니다.", terminator: " ")
        super.order()
    }
}
let pizza: Food = Food(name: "", price: 1500)
let cheesePizza: Food = Pizza(name: "치즈", price: 15000, topping: "치즈")
let carbonara: Food = Pasta(name: "카르보나라", price: 12000, sauce: "크림")
cheesePizza.order() // 치즈 피자에 치즈토핑을 선택하였습니다. 가격은 15000원입니다.
carbonara.order()   // 카르보나라 파스타에 크림 소스를 선택하였습니다. 가격은 12000원입니다.


//상속 예제 16
//동물 클래스를 정의하고, 고양이와 개와 오리 클래스를 동물 클래스로부터 상속받아서 구현하세요.
//
//동물 클래스는 이름과 나이를 속성으로 가지고 있습니다.
//
//고양이와 개와 오리 클래스는 각각 울음소리를 추가로 속성으로 가지고 있습니다.
//
//고양이와 개와 오리 클래스는 각각 울다라는 메서드를 오버라이딩해야 합니다.


//class Animal {
//    var name: String = ""
//    var age: Int = 0
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    func cry() {
//        print("\(name)이(가)",terminator: " ")
//    }
//}

//class Cat: Animal {
//    var meow: String = "?"
//    init(name: String, age: Int, meow: String) {
//        self.meow = meow
//        super.init(name: name, age: age)
//    }
//    override func cry() {
//        super.cry()
//        print("\(meow)이라고 울어요")
//    }
//}
//
//class Dog: Animal {
//    var bark: String = "?"
//    init(name: String, age: Int,bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//    override func cry() {
//        super.cry()
//        print("\(bark)이라고 짖어요")
//    }
//}
//
//class Duck: Animal {
//    var bark: String = "?"
//    init(name: String, age: Int,bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//    override func cry() {
//        super.cry()
//        print("\(bark)이라고 짖어요")
//    }
//}
//
//let kitty = Cat(name: "나비", age: 3, meow: "야옹")
//let puppy = Dog(name: "초코", age: 2, bark: "멍멍")
//let duck = Duck(name: "멋쟁", age: 2, bark: "꽥꽥")
//
//let animals: [Animal] = [kitty, puppy, duck]
//animals[0].cry()
//animals[1].cry()
//animals[2].cry()


enum Temperature {
    case hot, warm, cold(centigrade: Int)
}
//열거형 내의 개별 케이스에 연결된 값
func displayTempInfo(temp: Temperature) {
    switch temp {
    case Temperature.hot:
        print("too hot")
    case Temperature.warm:
        print("too warm")
    case Temperature.cold(let centigrade) where centigrade <= 0:
        print("Ice warning: \(centigrade) degrees")
    case Temperature.cold:
        print("too cold")
    }
}


displayTempInfo(temp: Temperature.cold(centigrade: -10))
print( Temperature.hot )

var temp: Temperature = .hot
temp = .cold(centigrade: -10)
print(temp)
dump(temp)
//temp = .warm


enum AnimalEnum : Int {
    case dog = 1
    case cat = 2
    case duck
}

print(AnimalEnum.dog.rawValue == 1)

enum Suit {
    case spade
    case club
    case heart
    case diamond
}

enum Rank {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
}

struct Card {
    var suit: Suit
    var rank: Rank
}

// 다른 방법 switch 구문으로 시도
func compareCards(card1: Card, card2: Card) {
    switch (card1.suit == card2.suit , card1.rank == card2.rank) {
    case (true, true) :
        print("두 카드는 모두 같습니다.")
    case (true, false) :
        print("두 카드는 같은 무늬입니다.")
    case (false, true) :
        print("두 카드는 같은 숫자입니다.")
    default:
        print("두 카드는 모두 다릅니다.")
    }
}
//---------------------------------------------------------------------
//예제 2 - 동물의 이름
//---------------------------------------------------------------------

enum Animal {
    case dog(name: String)
    case cat(name: String)
    case bird(name: String)
}

func checkAnimal(animals: [Animal]){
    animals.forEach(){ animal in
        switch animal {
        case .dog(name: let name):
            print("이 동물은 개이고 이름은 \(name)입니다.")
        case .cat(name: let name):
            print("이 동물은 고양이이고 이름은 \(name)입니다.")
        case .bird(name: let name):
            print("이 동물은 새이고 이름은 \(name)입니다.")
        }
    }
}
let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]
print(checkAnimal(animals: animals))
//---------------------------------------------------------------------
//예제 3 - 계절
//---------------------------------------------------------------------
//
//enum Seasons {
//    case winter, spring, summer, autumn, 몰루
//}
//
//// (date: (month: ?, day: ?)) 를 받으면 계절을 반환
//func getSeason(date: (Int, Int)) -> String {
//    let month = date.0
//    let day = date.1
//    let season: Seasons
//
//
//    switch month {
//    case 3...5:
//        season = .spring
//    case 6...8:
//        season = .summer
//    case 9...11:
//        season = .autumn
//    case 12, 1, 2:
//        season = .winter
//    default:
//        season = .몰루
//    }
//    switch season {
//    case .spring:
//        return "spring"
//    case .summer:
//        return "summer"
//    case .autumn:
//        return "autumn"
//    case .winter:
//        return "winter"
//    case .몰루:
//        return "?"
//    }
//}

//enum Seasons: String {
//    case spring = "봄"
//    case summer = "여름"
//    case autumn = "가을"
//    case winter = "겨울"
//}
//
//func getSeason(date: (Int, Int)) -> String {
//    let month = date.0
//    let day = date.1
//    switch month {
//        case 3...5:
//        return Seasons.spring.rawValue
//        case 6...8:
//        return Seasons.summer.rawValue
//        case 9...11:
//        return Seasons.autumn.rawValue
//        case 12, 1, 2:
//        return Seasons.winter.rawValue
//    default:
//        return "몰루"
//    }
//}
enum Seasons {
    case winter, spring, summer, autumn
}
func getSeason(date: (month: Int, day: Int)) -> Seasons {
    switch date.month {
    case 3...5:
        return .spring
    case 6...8:
        return .summer
    case 9...11:
        return .autumn
    default:
        return .winter
    }
}

let today = (month: 10, day: 17)
let season = getSeason(date: today)

print("오늘은 \(season)입니다.")  // 오늘은 autumn입니다.
print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")      // 오늘은 summer입니다.
print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.")     // 오늘은 winter입니다.
print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")       // 오늘은 spring입니다.     // 오늘은 spring입니다.


//---------------------------------------------------------------------
//예제 4
//---------------------------------------------------------------------
enum Operators {
    case add
    case subtract
    case multiply
    case divide
}

func calculate(num1: Int, num2: Int, op: Operators) -> Int{
    var result = 0
    switch op {
    case .add:
    result = num1 + num2
    case .subtract:
    result = num1 - num2
    case .multiply:
    result = num1 * num2
    case .divide:
    result =  num1 / num2
    }
    return result
}

let result = calculate(num1: 10, num2: 5, op: .divide)

print("결과는 \(result)입니다.")      //결과는 2입니다.
print("결과는 \( calculate(num1: 10, num2: 5, op: .add) )입니다.")        //결과는 15입니다.
print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) )입니다.")   //결과는 5입니다.
print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) )입니다.")   //결과는 50입니다.


//---------------------------------------------------------------------
//예제 5
//---------------------------------------------------------------------
enum Beverage {
    case coffee(price: Int)
    case tea(price: Int)
    case juice(price: Int)
}
func printTypeAndPrice(beverages: [Beverage]) {
    beverages.forEach() { beverages in
        switch beverages {
        case .coffee(price: let price) :
            print("이 음료는 커피이고 가격은 \(price)입니다.")
        case .tea(price: let price) :
            print("이 음료는 차이고 가격은 \(price)입니다.")
        case .juice(price: let price) :
            print("이 음료는 쥬스이고 가격은 \(price)입니다.")
        }
    }
}
let beverages = [Beverage.coffee(price: 3000),
                 Beverage.tea(price: 2000),
                 Beverage.juice(price: 2500)]
//배열 순회하면서 print 찍어준다
printTypeAndPrice(beverages: beverages)


//---------------------------------------------------------------------
//예제 6
//---------------------------------------------------------------------
enum Direction {
    case right, left, up, down
}

func move(position: (x: Int, y: Int), direction: Direction) -> (x: Int, y: Int) {
    var x = position.x
    var y = position.y
    
    switch direction {
    case .right:
        x += 1
        return (x, y)
    case .left:
        x -= 1
        return (x, y)
    case .up:
        y += 1
        return (x, y)
    case .down:
        y -= 1
        return (x, y)
    }
}

let currentPosition = (x: 0, y: 0)
var nextPosition = move(position: currentPosition, direction: .right)


print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.
nextPosition = move(position: currentPosition, direction: .left)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.
nextPosition = move(position: currentPosition, direction: .up)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.
nextPosition = move(position: currentPosition, direction: .down)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.
//---------------------------------------------------------------------
//예제 7
//---------------------------------------------------------------------
enum Dice: String, CaseIterable {
    case one = "one"
    case two = "two"
    case three = "three"
    case four = "four"
    case five = "five"
    case six = "six"
}

func rollDice() -> String {
    Dice.allCases.randomElement()!.rawValue
}
let dice = rollDice()
print("주사위의 면은 \(dice)입니다.")

//enum Dice2{
//    case one,two,three,four,five,six
//}
//
//func rollDice() -> Dice2{
//    return [Dice2.one,Dice2.two,Dice2.three,Dice2.four,Dice2.six].randomElement()!
//}
//---------------------------------------------------------------------
//예제 8
//---------------------------------------------------------------------
//enum Color {
//    case red(r: Int, g: Int, b: Int)
//    case green(r: Int, g: Int, b: Int)
//    case blue(r: Int, g: Int, b: Int)
//}
//
//func printColors(colors: [Color]) {
//    for color in colors {
//        switch color {
//        case .red(let r, let g, let b):
//            print("이 색상은 빨강이고 RGB 값은 (\(r),\(g),\(b))입니다.")
//        case .green(let r, let g, let b):
//            print("이 색상은 초록이고 RGB 값은 (\(r),\(g),\(b))입니다.")
//        case .blue(let r, let g, let b):
//            print("이 색상은 파랑이고 RGB 값은 (\(r),\(g),\(b))입니다.")
//        }
//    }
//}
//enum Color {
//    case red(r: Int, g: Int, b: Int)
//    case green(r: Int, g: Int, b: Int)
//    case blue(r: Int, g: Int, b: Int)
//}
//
//func printColors (colors: [Color]) {
//
//    for color in colors {
//
//        switch color {
//        case .red(let c) :
//            print("이 색은 빨강이고 RGB값은 \(c)입니다.")
//        case .green(let c) :
//            print("이 색은 초록이고 RGB값은 \(c)입니다.")
//        case .blue(let c) :
//            print("이 색은 파랑이고 RGB값은 \(c)입니다.")
//        }
//    }
//}
//let colors = [Color.red(r: 255, g: 0, b: 0),
//              Color.green(r: 0, g: 255, b: 0),
//              Color.blue(r: 0, g: 0, b: 255)]
//printColors(colors: colors)



//에러 핸들링 예제 01
//온도 변환 함수
//
//섭씨 온도를 화씨 온도로 변환하는 함수를 작성하세요.
//
//단, 섭씨 온도가 -273.15도보다 낮으면 InvalidTemperature 에러를 발생시키세요.

//---------------------------------------------------------------------
//에러 핸들링 예제 01
//---------------------------------------------------------------------

/* 온도 변환 함수

섭씨 온도를 화씨 온도로 변환하는 함수를 작성하세요.

단, 섭씨 온도가 -273.15도보다 낮으면 InvalidTemperature 에러를 발생시키세요.*/


enum TemperatureError: Error {
    case invalidTemperature
}

let validTemperature = true

func celsiusToFahrenheit(_ x: Double) throws -> Double {
    guard validTemperature else {
        throw TemperatureError.invalidTemperature
    }
    return (x * 1.8) + 32
    //(화씨온도 - 32) ÷ 1.8 = 섭씨온도 C
}
do {
    let fahrenheit = try celsiusToFahrenheit(-300)
    print(fahrenheit)
} catch TemperatureError.invalidTemperature {
    print("Invalid temperature")
}
// Invalid temperature

//---------------------------------------------------------------------
//에러 핸들링 예제 02
//---------------------------------------------------------------------

/*비밀번호 검증 함수

사용자가 입력한 비밀번호가 다음 조건을 만족하는지 검증하는 함수를 작성하세요.

최소 8자 이상
최소 하나의 대문자, 소문자, 숫자, 특수문자 포함
조건을 만족하지 않으면 PasswordError 에러를 발생시키세요.*/

enum PasswordError: Error {
    case tooShort
    case missingUppercase
    case missingLowercase
    case missingNumber
    case missingSymbol
}
let symbols: [String] = "!@#$%^&*()_+-=[]{}|;:,./<>?".map { String($0) }
let upper: [String] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { String($0) }
let lower: [String] = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
let setsymbols = Set(symbols)
let setupper = Set(upper)
let setlower = Set(lower)
let setnumber: Set<String> = ["1","2","3","4","5","6","7","8","9"]
func validatePassword(_ x: String)throws {
    var arr = x.map { String($0) }
    var setarr = Set(arr)
    guard x.count >= 8 else {
        throw PasswordError.tooShort
    }
    guard !setarr.intersection(setupper).isEmpty else {
        throw PasswordError.missingUppercase
    }
    guard !setarr.intersection(setlower).isEmpty else {
        throw PasswordError.missingLowercase
    }
    guard !setarr.intersection(setnumber).isEmpty else {
        throw PasswordError.missingNumber
    }
    guard !setarr.intersection(setsymbols).isEmpty else {
        throw PasswordError.missingSymbol
    }
}

// 예시:
do {
    try validatePassword("abc123")
} catch let error as PasswordError {
    switch error {
    case .tooShort:
        print("Password is too short")
    case .missingUppercase:
        print("Password is missing an uppercase letter")
    case .missingLowercase:
        print("Password is missing a lowercase letter")
    case .missingNumber:
        print("Password is missing a number")
    case .missingSymbol:
        print("Password is missing a symbol")
    }
}
// Password is too short
// Password is missing an uppercase letter
// Password is missing a symbol

//---------------------------------------------------------------------
//에러 핸들링 예제 03
//---------------------------------------------------------------------

/* ATM 기계 클래스

ATM 기계를 나타내는 클래스를 작성하세요.

다음 속성과 메서드를 구현하세요.

balance: 잔액을 나타내는 Double 타입의 속성. 초기값은 0이다.

deposit(amount: Double): 입금하는 메서드.

amount가 0보다 크면 잔액에 더하고 true를 반환한다.
그렇지 않으면 false를 반환한다.
withdraw(amount: Double) throws -> Double: 출금하는 메서드.

amount가 0보다 크고 잔액보다 작거나 같으면 잔액에서 빼고 amount를 반환한다.
amount가 0보다 작으면 NegativeAmount 에러를 발생시킨다.
amount가 잔액보다 크면 InsufficientBalance 에러를 발생시킨다. */
enum ATMError: Error {
    case negativeAmount
    case insufficientBalance
}
class ATM {
    var balance: Double = 0
    
    func deposit(amount: Double) -> Bool {
        if amount > 0 {
            balance += amount
            return true
        }else {
            return false
        }
    }
    func withdraw(amount: Double) throws -> Double {
        guard amount > 0 else {
            throw ATMError.negativeAmount
        }
        guard amount < balance else {
            throw ATMError.insufficientBalance
        }
        balance = balance - amount
        return balance
    }
}

// 예시:
let atm = ATM()
atm.deposit(amount: 1000)
print(atm.balance)              // 1000.0

do {
    let cash = try atm.withdraw(amount: 500)
    print(cash)                 // 500.0
} catch let error as ATMError {
    switch error {
    case .negativeAmount:
        print("Cannot withdraw a negative amount")
    case .insufficientBalance:
        print("Cannot withdraw more than balance")
    }
}

print(atm.balance)              // 500.0


//---------------------------------------------------------------------
//에러 핸들링 예제 04
//---------------------------------------------------------------------
/*
 계산기 구조체

 사칙연산을 수행하는 계산기를 나타내는 구조체를 작성하세요.

 다음 속성과 메서드를 구현하세요.

 result: 계산 결과를 나타내는 Double 타입의 속성. 초기값은 0이다.
 add(_ number: Double): result에 number를 더하는 메서드.
 subtract(_ number: Double): result에 number를 빼는 메서드.
 multiply(_ number: Double): result에 number를 곱하는 메서드.
 divide(_ number: Double) throws: result에 number를 나누는 메서드.
 단, number가 0이면 DivisionByZero 에러를 발생시킨다.
 
 mutation 키워드 : 특정 메소드 내에서 구조체 또는 열거형의 프로퍼티를 수정해야 하는 경우, 해당 메소드의 동작을 변경하도록 하는 것
 */
enum CalculatorError: Error {
    case divisionByZero
}

struct Calculator {
    var result: Double = 0
    mutating func add(_ number: Double) {
        result = result + number
    }
    mutating func subtract(_ number: Double) {
        result = result - number
    }
    mutating func multiply(_ number: Double) {
        result = result * number
    }
    mutating func divide(_ number: Double) throws {
        guard number != 0 else {
            throw CalculatorError.divisionByZero
        }
        result = result / number
    }
}

// 예시:
var calculator = Calculator()
calculator.add(10)
print(calculator.result)        // 10.0

calculator.subtract(3)
print(calculator.result)        // 7.0

calculator.multiply(2)
print(calculator.result)        // 14.0

do {
    try calculator.divide(7)
    print(calculator.result)    // 2.0
} catch CalculatorError.divisionByZero {
    print("Cannot divide by zero")
}
//---------------------------------------------------------------------
//에러 핸들링 예제 05
//---------------------------------------------------------------------
/*
 도서관 클래스

 도서관을 나타내는 클래스를 작성하세요.

 다음 속성과 메서드를 구현하세요.

 books: 책들을 나타내는 [String] 타입의 속성. 초기값은 빈 배열이다.

 limit: 대출 가능한 책의 수를 나타내는 Int 타입의 속성. 초기값은 3이다.

 borrow(book: String) throws -> String: 책을 대출하는 메서드.

 book이 books에 있고 limit보다 적게 대출했다면 book을 books에서 제거하고 "(book)을 대출했습니다."라는 문자열을 반환한다.
 book이 books에 없다면 BookNotFound 에러를 발생시키고, limit 이상으로 대출했다면 LimitExceeded 에러를 발생시킨다.
 */

enum LibraryError: Error {
    case bookNotFound, limitExceeded
}

class Library {
    var books: [String] = []
    var limit: Int = 3
    
    init(books: [String], limit: Int) {
        self.books = books
        self.limit = limit
    }
    
    func borrow(books: [String]) throws -> String {
        var isBookFound: Bool = false
        
        books.forEach{
            if self.books.contains($0) {
                isBookFound = true
            } else {
                isBookFound = false
            }
        }
        
        guard isBookFound else {
            throw LibraryError.bookNotFound
        }
        guard books.count <= limit else {
            throw LibraryError.limitExceeded
        }
        return "\(books)을 대출했습니다."
    }
}
// 예시:
let library = Library(books: ["Harry Potter", "The Little Prince", "The Hobbit"], limit: 1)
print(library.books)
do {
    let result = try library.borrow(books: ["The Little Prince"])
    print(result)
} catch LibraryError.bookNotFound {
    print("책을 찾을 수 없습니다.")
} catch LibraryError.limitExceeded {
    print("대출 한도를 초과했습니다.")
}
print(library.books)
// limit: 3 일 경우 대출 한도를 초과했습니다.
// limit: 4 일 경우 The Little Prince을 대출했습니다.
//---------------------------------------------------------------------
//에러 핸들링 예제 06 - 보너스
//---------------------------------------------------------------------
/*
 JSON 파싱 함수

 JSON 형식의 문자열을 파싱하여 딕셔너리로 반환하는 함수를 작성하세요. -> 까대기?

 단, JSON 형식이 올바르지 않으면 ParsingError 에러를 발생시키세요.
 */
// 예시:

enum ParsingError: Error {
    case invalidJSON
}


func parseJSON(_ json: String) throws -> [String: Any] {
    guard let data = json.data(using: .utf8) else {
        throw ParsingError.invalidJSON
    }
    guard let dictionary = try? JSONSerialization.jsonObject(with: data, options: []) as? [String : Any] else {
        throw ParsingError.invalidJSON
    }
    return dictionary
}
let jsonString = """
{
    "name": "John",
    "age": 25,
    "hobbies": ["reading", "coding", "gaming"]
}
"""

do {
    var dictionary = try parseJSON(jsonString)
    dictionary["hobbies"] = dictionary["hobbies"] as! [String]
    print(dictionary)
} catch ParsingError.invalidJSON {
    print("Invalid JSON format")
}
// ["name": "John", "age": 25, "hobbies": ["reading", "coding", "gaming"]]
//---------------------------------------------------------------------
//에러 핸들링 예제 07
//---------------------------------------------------------------------


