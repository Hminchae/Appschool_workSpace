//
//  main.swift
//  dictionary
//
//  Created by 황민채 on 10/23/23.
//
import Foundation

//-------------------------------------------------------------- dictionary 예제 1

//func mostFrequentValue(dict: [String: Int]) -> Int {
//    var result: [Int:Int] = [:]
//    dict.values.forEach {
//        result[$0] = (result[$0] ?? 0) + 1
//    }
//    return result.max(by: { $0.value < $1.value })!.0
//}
//
//let dict1 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 2]
//mostFrequentValue(dict: dict1)  // 2

//-------------------------------------------------------------- dictionary 예제 2

// 예시 코드
//func reverseKeyValue(dict: [String: String]) -> [String: String] {
//    // 코드를 작성
//    var result: [String : String] = [:]
//    dict.forEach { (key, value) in
//        result[value] = key
//    }
//    return result
//}
//
//let dict2 = ["apple": "red", "banana": "yellow", "grape": "purple"]
//let result = reverseKeyValue(dict: dict2)
//print(result)       // ["red": "apple", "yellow": "banana", "purple": "grape"]

//-------------------------------------------------------------- dictionary 예제 3

//func keysWithValue(dict: [String: Int], value: Int) -> [String] {
//    var mode = dict.filter({ $0.value == value }).keys
//    return mode
//}
//
//let dict3 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 1]
//let result = keysWithValue(dict: dict3, value: 2)
//print(result)       // ["d", "b"]
//-------------------------------------------------------------- dictionary 예제 4
// 예시 코드

//
//func dictToString(dict: [String: Any]) -> String {
//    var str: [String] = []
//    dict.forEach { (key, value) in
//        str.append(contentsOf: ["\(key):\(value)"])
//    }
//    return str.joined(separator: ",")
//}
//
//let dict4: [String: Any] = ["name": "Alice", "age": 20, "gender": "female"]
//let result = dictToString(dict: dict4)
//print(result)       // age:20,gender:female,name:Alice
//

//-------------------------------------------------------------- dictionary 예제 5
// 예시 코드


//func sumOfKeysAndValues(dict: [Int: Int]) -> (Int, Int) {
//    var keysum: Int = 0
//    var valuesum: Int = 0
//    dict.forEach { (key, value) in
//        keysum += key
//        valuesum += value
//    }
//    return (keysum, valuesum)
//}
//
//let dict5 = [1: 10, 2: 20, 3: 30]
//let result = sumOfKeysAndValues(dict: dict5)
//print(result)       // (6, 60)


//-------------------------------------------------------------- dictionary 예제 6

//let person: [String : Any] = ["name": "Kim", "age": 25, "job": "programmer"]
//print(person["name"]!)

//-------------------------------------------------------------- dictionary 예제 7
//let fruit = ["apple": 3, "banana": 5, "orange": 2]
//
//fruit.forEach { i in
//    print(i)
//}
//-------------------------------------------------------------- dictionary 예제 8
//let scores = ["math": 90, "english": 85, "science": 95]
//print(scores.values.max()!)
//-------------------------------------------------------------- dictionary 예제 9
//-------------------------------------------------------------- dictionary 예제 10
//let dict1 = ["a": 1, "b": 2, "c": 3]
//let dict2 = ["b": 2, "c": 4, "d": 5]
//
//for (key, value) in dict1 {
//    if let  x = dict2[key] {
//        print("\(key):\(value)")
//        print("\(key):\(x)")
//    }
//}
//-------------------------------------------------------------- dictionary 예제 11
//-------------------------------------------------------------- dictionary 예제 12
//-------------------------------------------------------------- set 예제1
//func intersect(_ A: Set<Int>,_ B: Set<Int>) ->Set<Int> {
//    return A.intersection(B)
//}
//let setA: Set<Int> = [1, 2, 3, 4, 5]
//let setB: Set<Int> = [3, 4, 5, 6, 7]
//let intersection = intersect(setA, setB)
//print(intersection) // [3, 4, 5]
//-------------------------------------------------------------- set 예제2
// 예시코드:
//func unite(_ A: Set<String>,_ B: Set<String>) ->Set<String> {
//    return A.union(B)
//}
//let setC: Set<String> = ["apple", "banana", "cherry"]
//let setD: Set<String> = ["cherry", "durian", "elderberry"]
//let union = unite(setC, setD)
//print(union) // ["apple", "banana", "cherry", "durian", "elderberry"]
//-------------------------------------------------------------- set 예제3
//func subtract(_ A: Set<Double>,_ B: Set<Double>) ->Set<Double> {
//    return A.subtracting(B)
//}
//let setE: Set<Double> = [1.0, 2.0, 3.0, 4.0, 5.0]
//let setF: Set<Double> = [2.0, 4.0, 6.0]
//let difference = subtract(setE, setF)
//print(difference) // [1.0, 3.0, 5.0]
//-------------------------------------------------------------- set 예제4
//func disjoint(_ A: Set<Character>,_ B: Set<Character>) ->Bool {
//    //return A.intersection(B).isEmpty
//    return A.isDisjoint(with: B)
//}
//let setG: Set<Character> = ["a", "b", "c"]
//let setH: Set<Character> = ["d", "e", "f"]
//let isDisjoint = disjoint(setG, setH)
//print(isDisjoint) // true
//-------------------------------------------------------------- set 예제5
//비트마스크
func getSubsets(_ set: Set<Int>) -> [[Int]] {
    var result = [[Int]]()
    var array = Array(set)
    let n = set.count
    for i in 0..<n {
        var subSet = [Int]()
        for j in 0..<i {
            print(" ", j, array[i])
            subSet.append(array[i])
        }
        result.append(subSet)
    }
    return result
}
let setI: Set<Int> = [1, 2, 3]
let subsets = getSubsets(setI)
print(subsets) // [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
               // 또는 [Set([]), Set([2]), Set([1]), Set([1, 2]), Set([3]), Set([3, 2]), Set([1, 3]), Set([3, 2, 1])]



print( 1 >> 2 )
