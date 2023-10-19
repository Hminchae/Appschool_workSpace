import UIKit

var greeting = "Hello, playground"


func printName(_ name: String) {
    print(name)
}

//if - let
var myName: String! = "r"

if let name: String = myName {
    printName(name)
}else {
    print("myName == nil")
}


struct Sample {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불변 프로퍼티
    
    static var typeProperty: Int = 100 //이 타입 안에서 사용할 수 있는 타입 프로퍼티
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    //타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

var mutable: Sample = Sample() // 가변 인스턴스

mutable.mutableProperty = 200


class 이름 {
    //구현부 -> 다중상속 안 됨
}

//타입메서드 재정의 불가 타입메서드
// static func typemethod() {/...
// class func classMethod() -> 재정의 가능 타입 메서드


//클래스로 선언되어있다면 가변/불변 인스턴스가 내부 가변 프로퍼티는 수정할 수 있다.

enum Grate {
    case 이름1 //->각 케이스는 그 자체가 고유의 값임
    case 이름2
    case 이름3
}

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon // 처음 선언해줄땐 타입을 명시해주어야함
day = Weekday.tue

print(day)

//switch day {
//case .mon .tue, .wed
//
//}


//rawValue 를 사용할 수 있다
//각 케이스별로 각각 다른 값을 가져야 함

enum Fruit: String {
    case apple = "사과"
    case grape = "포도"
    case peach = "복숭아"
}

print("\(Fruit.peach.rawValue)")


//rawValue를 통해 초기화할 수 있다.
//rawValue가 case에 해당하지 않을 수 있으므로ㅗ
//rawValue를 통해 초기화한 인스턴스는 옵셔널 타입이다.

//let apple: Fruit = Fruit(rawValue: "사과") ?? "S"

//값 타입과 참조타입


func sumFuntion(a: Int, b: Int) -> Int{
    return a + b
}

var sumResult: Int = sumFuntion(a: 1, b: 2)

var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}
sumResult = sum(1, 2)

// 콜백의 용도

//result = calculate(a: 10, b: 10, method: {
//    return $0 + $1
//})
//
//result = calculate(a: 10, b: 10){
//    return $0 + $1 //암시적 반환 타입, return 안 써도 됨
//}


//enum AnimalEnum: Int {
//    case dog = 1
//    case cat
//    case duck
//}
//
//AnimalEnum.dog.rawValue == 1
//AnimalEnum.cat.rawValue
//AnimalEnum.duck.rawValue
//
//
//enum Animal {
//    case dog(name: String)
//    case cat(name: String)
//    case bird(name: String)
//}
//
//func checkAnimal(animals: [Animal]) {
//    for i in animals {
//        switch i {
//        case .dog(let name):
//            print("이 동물은 개이고 이름은 \(name)입니다.")
//        case .cat(let name):
//            print("이 동물은 고양이이고 이름은 \(name)입니다.")
//        case .bird(let name):
//            print("이 동물은 개이고 이름은 \(name)입니다.")
//        }
//    }
//}
//let animals = [Animal.dog(name: "바둑이"),
//               Animal.cat(name: "나비"),
//               Animal.bird(name: "짹짹이")]
//checkAnimal(animals: animals)


//enum Season {
//    case winter = "winter"
//    case spring = "
//    case summer
//    case autumn
//}
//
//func getSeason(date: (Int, Int)){
//    switch date.0{
//    case 12, 1, 2:
//
//    }
//}


/* 에러 핸들링(protocol) 133p
 타입이 구현해야 하는 요구사항을 정의하는 규칙들의 집합
 - 발생할 수 있는 모든 에러에 대해 처리
 - 메서드가 던진(throwing) 에러를 잡아서 처리
 
 do {
    try [throw를 발생하는 함수()]
 } catch [에러패턴1] {
 } catch [에러패턴2] {
 } catch [에러패턴3] where [조건] {
 } catch [에러패턴4, 에러패턴5] {
 } catch
 
 defer 구문 p138
 - 현재 코드블록이 종료되기 직전(맨 마지막) 에 수행되는 작업을 지정(ex. 정리 작업)
 
 
*/



enum FileTransferError: Error {
    case noConnection
    case lowBandWidth
    case fileNotFound
}

let connectionOK = true
let connectionSpeed = 30.00
let fileFound = false

func fileTransfer() throws {

    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandWidth
    }
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}

// 스로잉 메서드와 함수 호출 136p
func sendFile() -> String {
    do {
        try fileTransfer()
    } catch FileTransferError.noConnection {
                // ...
    } catch FileTransferError.lowBandWidth {
        // ...
    } catch FileTransferError.fileNotFound {
                // ...
    } catch {
        // default
    }
    return "Succesful transfer"
}

sendFile()

//에러 캐칭 비활성화 ? p137

let x: ()? = try? fileTransfer()


//let y: Int?
//do {
//    y = try fileTransfer()
//} catch {
//    y = nil
//}


//func transfer() -> Int {
//    if let data = try? fileTransfer() { return data}
//    return nil
//}



struct Money {
    var currencyRate: Double
    var dollar: Double{ //프로퍼티 감시자
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경됨.")
        }
    }
    var won: Double { //연산프로퍼티
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var money = Money()
money.won = 1000
print(money.won)
print(money.dollar)
