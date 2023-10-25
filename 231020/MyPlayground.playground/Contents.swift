import Foundation

////에러 핸들링
//struct ConcurrencyView1: View {
//    var body: some View {
//        Button(action: {
//            // 동기 함수에서 비동기 함수 호출
//            Task {
//                await doSomething()
//            }
//        }, label: {
//            Text("Do Something")
//        })
//    }
//
//    func doSomething() async {
//        var totalSum: [Int: Int] = [:]
//        var indexlist = [1, 50]
//        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
//        async let result1 = sumFrom(indexlist[0] + 1, indexlist[0] + 50)
//        async let result2 = sumFrom(indexlist[1] + 1, indexlist[1] + 50)
//        // 결과를 출력
//        var a = await result1
//        var b = await result2
//        print("\(a + b)")
//    }
//
//    // s부터 e까지의 합을 구하는 비동기 함수
//    func sumFrom(_ s: Int, _ e: Int) async -> Int {
//        var sum = 0
//        for i in s...e {
//            sum += i
//        }
//        return sum
//    }
//}
//---------------------------------------------

// s부터 e까지의 합을 구하는 비동기 함수
//func sumFrom(_ s: Int, _ e: Int) async -> Int {
//    var sum = 0
//    for i in s...e {
//        sum += i
//    }
//    return sum
//}
//
//func doSomething() async {
//    // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
//    async let result1 = sumFrom(1, 50)
//    async let result2 = sumFrom(51, 100)
//    // 결과를 출력
//    var a = await result1
//    var b = await result2
//    print("\(a + b)")
//}
//
//Task {
//    await doSomething()
//}
//-------------------------------------------------- 동시성 예제03
//func asyncFunction() async -> Int {
//    let random = Int.random(in: 1...10)
//    return random
//}
//
//
//Task {
//    print(await asyncFunction())
//}
//-------------------------------------------------- 동시성 예제04

//func asyncAdd(_ x: Int, _ y: Int) async -> Int {
//    return x + y
//}
//
//func asyncPrintSum(_ a: Int, _ b: Int)async {
//    let sum = await asyncAdd(a, b)
//    print(sum)
//}
//Task {
//    await asyncPrintSum(3, 6)
//}
//-------------------------------------------------- 동시성 예제05
//func fetchUser(id: Int) async -> String {
//    // some network request
//    return "User \(id)"
//}
//
//func printUser(_ id: Int) async {
//    let user = await fetchUser(id: id)
//    print(user)
//}
//Task {
//    await printUser(3343423)
//}
//-------------------------------------------------- 동시성 예제06

//func asyncDouble(_ x: Int) async -> Int {
//    return x * 2
//}
//
//func syncDouble(_ x: Int) async -> Int {
//    return await asyncDouble(x)
//}
//Task {
//    print(await asyncDouble(3343423))
//}

//-------------------------------------------------- 동시성 예제06
//func asyncAdd(_ x: Int, _ y: Int) async -> Int {
//    return x + y
//}
//
//func asyncPrintSum() async {
//    let a = await asyncAdd(10, 20)
//    let b = await asyncAdd(30, 40)
//    print(a + b)
//}
//
//Task {
//    await asyncPrintSum()
//}


//extension String {
//    subscript(idx: Int) -> String? {
//        guard (0..<count).contains(idx) else {
//            return nil
//        }
//        let target = index(startIndex, offsetBy: idx)
//        return String(self[target])
//    }
//}
//
func solution(_ my_string:String, _ m:Int, _ c:Int){
    var my_string = my_string
    print(my_string)
    var arr: [[String]] = [[]]
    print(my_string)
    for i in 0..<my_string.count / m {
        arr[i].append(String(my_string.prefix(m)))
        print(arr)
        let range = my_string.startIndex..<my_string.index(my_string.startIndex, offsetBy: m) //삭제
        my_string.removeSubrange(range)
        print(my_string)
    }
//    arr.forEach {
//        print($0[c-1], terminator: "")
//    }
    
}

solution("ihrhbakrfpndopljhygc", 4, 2)

//var arr: [[String]] = [[]]
//
//arr[0].append("이럼아ㅓ리마얼;")
//
//print(arr)
