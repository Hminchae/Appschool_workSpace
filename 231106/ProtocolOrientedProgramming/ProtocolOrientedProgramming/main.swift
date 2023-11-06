//
//  main.swift
//  ProtocolOrientedProgramming
//
//  Created by 황민채 on 11/6/23.
//

import Foundation

/*:
 ## 프로토콜(protocol) 소개 p.96

 타입이 구현해야 하는 요구사항을 정의하는 규칙들의 집합

 구조체, 클래스, 열거형이 반드시 포함해야 하는 메서드와 프로퍼티를 정의
 
protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String

    init(name: String) {
        self.name = name
    }

    func buildMessage() -> String {
        return "Hello " + name
    }

    // 클래스에서 타입 메서드
    class func calcName(name: String, str: String) -> String {
        return name + " " + str
    }
}

MyClass.calcName(name: "park", str: "good")

/**
 ## 프로토콜 채택 예시
 protocol 프로토콜 이름 {
 // 프로토콜 정의
 }

 class MyClass: 프로토콜 이름 {
 // 클래스 정의
 }

 struct MyStruct: 프로토콜 이름 {
 // 구조체 정의
 }

 enum MyEnum: 프로토콜 이름 {
 // 열거형 정의
 }
 */


// 프로퍼티 요구사항
protocol MyProtocol {
    // var fullName: String { get set }
    var mustBeValue: Int { get set }
    var doesNotNeedToValue: Int { get }
}

protocol MyProtocolFullName {
    var fullName: String { get set }
}

struct MyStruct: MyProtocol {

    var mustBeValue: Int {
        get { return 0}
        set { }
    }

    var doesNotNeedToValue: Int {
        get { return 0}
    }

}
//let my = MyStruct()
//my.mustBeValue


// 메서드 요구사항
protocol MyProtocolMethod {
    func random() -> Double
}

// 타입 메서드 요구사항...
protocol MyProtocolMethod2 {
    static func randomG() -> Double
}

struct MyMethod: MyProtocolMethod, MyProtocolMethod2 {
    func random() -> Double {
        return 0.0
    }

    // 타입 메서드를 구조체에서 구현하기 위해서는 static func 로 시작
    static func goodMethod() -> String {
        return "good"
    }

    static func randomG() -> Double {
        return 1.1
    }
}


// 타입 메서드
MyMethod.goodMethod()

// 인스턴스 메서드
let myMethod = MyMethod()
myMethod.random()


// 열거형

print("end")

*/
//예제01
//
//protocol Greeting {
//    var name: String { get }
//    func sayHello()
//}
//
//struct Person: Greeting {
//    var name: String
//    func sayHello() {
//        print("Hello, \(self.name)!")
//    }
//}
//
//let person = Person(name: "park")
//person.sayHello()     // Hello, park!
//
////예제02
//
//protocol Shape {
//    var area: Double { get }
//}
//
//class Circle: Shape {
//    var radius: Double
//    
//    var area: Double {
//        return .pi * radius * radius
//    }
//    init(radius: Double) {
//        self.radius = radius
//    }
//    
//}
////예제03
//
//let circle = Circle(radius: 4.0)
//print(circle.area)
//
//
//protocol Vehicle {
//    static func makeNoise()
//}
//
//struct Car: Vehicle {
//    static func makeNoise() {
//        print("붕붕")
//    }
//}
//
//Car.makeNoise()
////예제04
//
//protocol Countable {
//    static var count: Int { get set }
//}
//
//class Counter: Countable {
//    static var count: Int = 0
//}
//
//print(Counter.count)


//=========================================================================================
// 예제 06
//=========================================================================================
//
//protocol Person {
//    var name: String { get set }
//    var age: Int { get set }
//
//    func introduce()
//}
//
//class Student: Person {
//    var name: String
//    var age: Int
//    var school: String
//
//    init(name: String, age: Int, school: String) {
//        self.name = name
//        self.age = age
//        self.school = school
//    }
//
//    func introduce() {
//        print("My name is \(name) and I'm \(age) years old.")
//        print("I go to \(school).")
//    }
//}
//let myStucent = Student(name: "Park", age: 20, school: "ll")
//myStucent.introduce()
//
//
////=========================================================================================
//// 예제 07
////=========================================================================================
//protocol Greeter {
//    func greet(name: String)
//}
//
//class Person2: Greeter {
//    func greet(name: String) {
//        print("Hello, \(name)!")
//    }
//}
//
//let person = Person2()
//person.greet(name: "Kim")
////=========================================================================================
//// 예제 08
////=========================================================================================
//
//// 예시 코드:
//protocol Animal {
//    var name: String { get }
//    func makeSound()
//}
//
//protocol Animal2 : Animal {
//    var owner: String { get }
//}
//struct Dog: Animal2 {
//    var owner: String
//    var name: String
//    
//    init(owner: String, name: String) {
//        self.owner = owner
//        self.name = name
//    }
//    func makeSound() {
//        print("Woof!")
//    }
//}
//let bob = Dog(owner: "Charlie", name: "Bob")
//bob.makeSound()     // Woof!
//
//
////=========================================================================================
//// 예제 09
////=========================================================================================
//
//
//// 예시 코드:
////protocol Calculable {
////    var value: Int { get set }
////    static func add(_ a: Int, _ b: Int) -> Int
////}
////
////class Calculator: Calculable {
////    var value: Int = 0
////    
////    static func add(_ a: Int, _ b: Int) -> Int {
////        return a + b
////    }
////}
////
////let calc = Calculator()
////calc.value = Calculator.add(3, 5)
////print(calc.value)
////=========================================================================================
//// 예제 10
////=========================================================================================
//
//// 예시 코드:
//protocol Colorful {
//    var color: String { get }
//    func describe()
//}
//
//extension Colorful {
//    func describe() {
//        print("This is \(color).")
//    }
//}
//
//enum Fruit: Colorful {
//    case apple, banana, cherry
//    var color: String  {
//        switch self {
//        case .apple:
//            return "red"
//        case .banana:
//            return "yellow"
//        case .cherry:
//            return "pink"
//        }
//    }
//    
//    
//}
//let fruit = Fruit.apple
//fruit.describe()        // This is red.
//Fruit.banana.describe() // This is yellow.
//Fruit.cherry.describe() // This is pink.



//서브 스크립트

//struct MySubscripts {
//    var arr: [String] = []
//
//    subscript(index: Int) -> String {
//        return arr[index]
//    }
//}
//
//let mysc = MySubscripts(arr: ["Park", "Kim", "Lee"])
//mysc[1]

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

//=========================================================================================
// 예제 11
//=========================================================================================
// 예시 코드:
protocol Animal {
    var name: String { get }
    func makeSound()
}

extension Animal {
    var name: String {
        get {
            return ""
        }
    }
    func introduce() {
        print("My name is \(name)")
    }
}
class Dog: Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Woof!")
    }
}

struct Cat: Animal {
    var name: String

    func makeSound() {
        print("Meow!")
    }
}

enum Bird: Animal {
    case parrot(String)
    case sparrow(String)

    var name: String {
        switch self {
        case .parrot(let name):
            return name
        case .sparrow(let name):
            return name
        }
    }

    func makeSound() {
        switch self {
        case .parrot:
            print("Hello!")
        case .sparrow:
            print("Chirp!")
        }
    }
}

// 추가 코드
//...

let dog = Dog(name: "Max")
let cat = Cat(name: "Lily")
let bird = Bird.parrot("Jack")

dog.introduce()     // My name is Max.
cat.introduce()     // My name is Lily.
bird.introduce()    // My name is Jack.



//=========================================================================================
// 예제 12
//=========================================================================================
// 예시 코드:
protocol Flyable {
    var speed: Double { get set }
}

extension Flyable {
    var speed: Double {
        get {
            return 0.0
        }
    }
    func fly
}
struct Bird : Flyable {
    var speed: Double
}

let bard = Bird(speed: 30)
bard.fly()
