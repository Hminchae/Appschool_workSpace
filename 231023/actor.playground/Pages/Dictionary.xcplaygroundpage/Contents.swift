//: [Previous](@previous)

import Foundation

//--------------------------------------------------------------예제 1

func mostFrequentValue(dict: [String: Int]) -> Int {
    // 코드를 작성
}

let dict1 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 2]
mostFrequentValue(dict: dict1)  // 2

//--------------------------------------------------------------예제 2

//--------------------------------------------------------------예제 3

func keysWithValue(dict: [String: Int], value: Int) -> [String] {
    var mode = dict.filter({ $0.value == value }).keys.sorted()
    return mode
}

let dict3 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 1]
let result = keysWithValue(dict: dict3, value: 2)
print(result)       // ["d", "b"]
//--------------------------------------------------------------예제 4
//--------------------------------------------------------------예제 5

//--------------------------------------------------------------예제 6

let person: [String : Any] = ["name": "Kim", "age": 25, "job": "programmer"]
print(person["name"]!)

//--------------------------------------------------------------예제 7
let fruit = ["apple": 3, "banana": 5, "orange": 2]

fruit.forEach { i in
    print(i)
}
