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

//extension String {
//    subscript(idx: Int) -> String? {
//        guard (0..<count).contains(idx) else {
//            return nil
//        }
//        let target = index(startIndex, offsetBy: idx)
//        return String(self[target])
//    }
//}

//=========================================================================================
// 예제 11
//=========================================================================================
// 예시 코드:
//protocol Animal {
//    var name: String { get }
//    func makeSound()
//}
//
//extension Animal {
//    var name: String {
//        get {
//            return ""
//        }
//    }
//    func introduce() {
//        print("My name is \(name)")
//    }
//}
//class Dog: Animal {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func makeSound() {
//        print("Woof!")
//    }
//}
//
//struct Cat: Animal {
//    var name: String
//
//    func makeSound() {
//        print("Meow!")
//    }
//}
//
//enum Bird: Animal {
//    case parrot(String)
//    case sparrow(String)
//
//    var name: String {
//        switch self {
//        case .parrot(let name):
//            return name
//        case .sparrow(let name):
//            return name
//        }
//    }
//
//    func makeSound() {
//        switch self {
//        case .parrot:
//            print("Hello!")
//        case .sparrow:
//            print("Chirp!")
//        }
//    }
//}
//
//// 추가 코드
////...
//
//let dog = Dog(name: "Max")
//let cat = Cat(name: "Lily")
//let bird = Bird.parrot("Jack")
//
//dog.introduce()     // My name is Max.
//cat.introduce()     // My name is Lily.
//bird.introduce()    // My name is Jack.
//


//=========================================================================================
// 예제 12
//=========================================================================================
// 예시 코드:
protocol Flyable {
    var speed: Double { get set }
}

struct Bird : Flyable {
    var speed: Double
    init(speed: Double) {
        self.speed = speed
    }
}

extension Flyable {
    func fly() {
        print("Flying at \(speed) km/h")
    }
}


let bard = Bird(speed: 30.0)
bard.fly()


//extension String {
//    subscript(idx: Int) -> String? {
//        guard (0..<count).contains(idx) else {
//            return nil
//        }
//        let target = index(startIndex, offsetBy: idx)
//        return String(self[target])
//    }
//}
//extension String {
//    subscript(range: ClosedRange<Int>) -> String {
//        let start = self.index(self.startIndex, offsetBy: range.startIndex)
//        let end = self.index(self.startIndex,offsetBy: range.endIndex)
//        
//        return String(self[start...end])
//    }
//}
//var str: String = "helloHwangminchae"
//print(str[1...5])
//


//func swapTWoValue<Element>(_ a: inout Element, _ b: inout Element) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//swapTWoValue(5, 6)

//===============================================================
// 제네릭 예제 01
//===============================================================
struct Stack<T> {
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var intStack = Stack<Int>()
intStack.push(3)
intStack.push(5)
print(intStack.pop()) // 5

var stringStack = Stack<String>()
stringStack.push("Hello")
stringStack.push("World")
print(stringStack.pop())
//===============================================================
// 제네릭 예제 02
//===============================================================
func swap<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 10
var b = 20
swap(&a, &b)
print(a, b) // 20, 10
//===============================================================
// 제네릭 예제 03
//===============================================================
struct Stack2<T> {
    
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func peek() -> T {
        return items.index(after: items.count - 1) as! T
    }
    func isEmpty() -> Bool {
        if items.count == 0 {
            return true
        } else {
            return false
        }
    }
}

// 예시 코드:
var stack = Stack2<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
print(stack.pop())   // 3
print(stack.peek())  // 2
print(stack.isEmpty) // false


extension String {
    // 1..<5 는 Range 타입
    // 1...5 는 ClosedRange 타입
    subscript(range: ClosedRange<Int>) -> String {
        // ClosedRange 를 Range 타입으로 변환
        let range = range.first!..<range.count
        
        let start = self.index(self.startIndex, offsetBy: range.startIndex)
        let end = self.index(self.startIndex,offsetBy: range.endIndex)
        
        return String(self[start...end])
    }
}
var str: String = "helloHwangminchae"
print(str[1...5])

//===============================================================
// 제네릭 예제 04
//===============================================================
struct Queue<T> {
    var elements: [T] = []
    var count: Int {
        return elements.count
    }
    var isEmpty: Bool {
        return elements.isEmpty
    }
    //메서드
    mutating func enqueue(_ element: T)  {
        elements.append(element)
    }
    mutating func dequeue() -> T? {
        !elements.isEmpty ? elements.removeFirst() : nil
    }
    
    mutating func front() -> T? {
        !elements.isEmpty ? elements[0] : nil
    }
}


var queue = Queue<String>()
queue.enqueue("A")
queue.enqueue("B")
queue.enqueue("C")
print(queue.dequeue()!) // A
print(queue.front()!) // B
print(queue.isEmpty) // false

//===============================================================
// 제네릭 예제 05
//===============================================================
func printType<T>(_ x: T) {
    print("The type of \(x) is \(type(of: x))")
}

printType(3) // The type of 3 is Int
printType("Hello") // The type of Hello is String
printType(true) // The type of true is Bool
//===============================================================
// 제네릭 예제 06
//===============================================================
class Node<T> {
    var key: T
    var value: T
    init(key: T, value: T) {
        self.key = key
        self.value = value
    }
}

let node = Node(key: "name", value: "Alice")
print(node.key) // name
print(node.value) // Alice

//===============================================================
// 제네릭 예제 07
//===============================================================

func isEqual<T: Equatable>(_ x: T, _ y: T) -> Bool {
    x == y ? true : false
}
print(isEqual(1, 1)) // true
print(isEqual("Hello", "World")) // false
print(isEqual(true, false)) // false


//===============================================================
// 제네릭 예제 08
//===============================================================
func isInt<T>(_ value: T) -> Bool {
    return value is Int
}
print(isInt(3)) // true
print(isInt("Hello")) // false
print(isInt(true)) // false
//===============================================================
// 제네릭 예제 09
//===============================================================


func castToInt<T>(_ value: T) -> Int? {
    if let intValue = value as? Int {
        return intValue
    } else {
        return nil
    }
}
print(castToInt(3)) // 3
print(castToInt("Hello")) // nil
print(castToInt(true)) // nil

//===============================================================
// 제네릭 예제 10
//===============================================================
func swapFirstAndLast<T>(_ arr: inout [T]) -> [T] {
    let tmp = arr[0]
    arr[0] = arr[arr.count - 1]
    arr[arr.count - 1] = tmp
    return arr
}
//var array = [1, 2, 3, 4, 5]
//swapFirstAndLast(&array)
//print(array) // [5, 2, 3, 4, 1]
//
//var array2 = ["A", "B", "C", "D"]
//swapFirstAndLast(&array2)
//print(array2) // ["D", "B", "C", "A"]

//===============================================================
// 제네릭 예제 11
//===============================================================
func printReverse<T>(_ arr: inout [T]) {
    while true {
        print(arr.last!)
        arr.removeLast()
        if arr.isEmpty {
            break
        }
    }
}


var array = [1, 2, 3, 4, 5]
printReverse(&array)
// 5
// 4
// 3
// 2
// 1

var array2 = ["A", "B", "C", "D"]
printReverse(&array2)
// D
// C
// B
// A
//===============================================================
// 제네릭 예제 12
//===============================================================
class Node<T> {
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

struct LinkedList<T> {
    private var head: Node<T>?

    mutating func append(_ value: T) {
        let newNode = Node(value: value)
        if head == nil {
            head = newNode
            return
        }

        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = newNode
    }

    mutating func insert(_ value: T, at index: Int) {
        let newNode = Node(value: value)
        if index == 0 {
            newNode.next = head
            head = newNode
            return
        }

        var current = head
        var i = 0
        var previous: Node<T>?
        while current?.next != nil && i < index {
            previous = current
            current = current?.next
            i += 1
        }
        previous?.next = newNode
        newNode.next = current
    }

    mutating func remove(at index: Int) -> T? {
        if index == 0 {
            let value = head?.value
            head = head?.next
            return value
        }

        var current = head
        var i = 0
        var previous: Node<T>?
        while current?.next != nil && i < index {
            previous = current
            current = current?.next
            i += 1
        }
        previous?.next = current?.next
        return current?.value
    }

    func nodeAt(_ index: Int) -> Node<T>? {
        var current = head
        var i = 0
        while current?.next != nil && i < index {
            current = current?.next
            i += 1
        }
        return current
    }

}

// 예시 코드:
var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.insert(4, at: 1)
list.remove(at: 2)
print(list.nodeAt(0)?.value) // 1
print(list.nodeAt(1)?.value) // 4
print(list.nodeAt(2)?.value) // 3


