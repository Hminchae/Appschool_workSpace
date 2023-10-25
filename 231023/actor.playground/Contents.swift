import Foundation


//격리
//actor BuildMessage {
//    var message: String = ""
//    let greeting = "hello"
//    
//    func setName(name: String) {
//        self.message = "\(greeting) \(name)"
//    }
//    
//    nonisolated func getGreeting() -> String {
//        return greeting
//    }
//}
//
//func someFunction() async {
//    let builder = BuildMessage()
//    await builder.setName(name: "Hwang")
//    let message = await builder.message
//    print(message)
//    print(builder.getGreeting())
//}
//
//
//Task {
//    await someFunction()
//}

//func syncsomeFuntion() {
//    let builder = BuildMessage()
//    print("syncFunction", builder.getGreeting() )
//}

//syncsomeFuntion()


//actor Calculator {
//    func add(_ x: Int, _ y: Int) -> Int {
//        return x + y
//    }
//}
//
//let calculator = Calculator()
//Task {
//    let result = await calculator.add(3, 5)
//    print(result)
//}
//=-------------------------------------------------------예제 02


//actor Multiplier {
//    var factor: Int
//    init(factor: Int) {
//        self.factor = factor
//    }
//    func multiply(_ x: Int) -> Int {
//        return x * x
//    }
//}
//
//let multiplier = Multiplier(factor: 2)
//Task {
//    let result = await multiplier.multiply(4)
//    print(result)
//}

//=-------------------------------------------------------예제 03
// 예시코드
//actor Counter {
//    var count = 0
//    func increment() -> Int {
//        self.count += 1
//        return count
//    }
//}
//
//let counter = Counter()
//Task {
//    let result = await counter.increment()
//    print(result)
//}

//=-------------------------------------------------------예제 03
// 예시:
actor Concatenator {
    func concatenate(_ x: String, _ y: String) -> String {
        return x + y
    }
}
let concatenator = Concatenator()
async {
    let result = await concatenator.concatenate("Hello", "World")
    print(result) // 출력 결과: HelloWorld
}
