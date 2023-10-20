import Foundation



//func sumFrom(_ a: Int, _ b: Int) async -> Int {
//    var result: Int = 0
//    for i in a...b {
//        result += i
//    }
//    return result
//}
//
//func doSomthing(_ start: Int,_ end: Int) async {
//    let a = await sumFrom(start, end / 2)
//    let b = await sumFrom(end / 2 + 1, end)
//    let sumsum = a + b
//    print(sumsum)
//}
//
//
//Task { await doSomthing(1, 100) }  // 5050?


//func sumFrom(_ start:Int,_ end:Int) async -> Int{
//    var result:Int = 0
//    for i in start...end{
//        result += i
//    }
//    return result
//}
//
//func sum(start: Int,end: Int) async -> Int {
//    let a = await sumFrom(start, end / 2)
//    let b = await sumFrom(end / 2 + 1, end)
////    print(a + b)
////    print(b)
//    return (a + b)
//}
//
//Task{ print(await sum(start: 1,end: 100))}   // 5050?


//func functionWithAssert(age: Int?) {
//    assert(age != nil, "age 가 nil이야 자네 ...")
//
//    assert((age! >= 0) && (age! <= 130), "나이값 입력 제대로 해 ...")
//    print("당신 .. \(age!)살 먹었구나 ... ")
//}
//
//functionWithAssert(age: 49)
//

(1...어쩌구) .map ~
