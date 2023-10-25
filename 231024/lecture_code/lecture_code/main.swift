//
//  main.swift
//  lecture_code
//
//  Created by 황민채 on 10/24/23.
//

import Foundation

////익명함수와 이름이 있는 함수 또한 클로저
////클로저
//
//let name = ["minchae","minjae", "heesun", "jihun", "hyeonho", "sunghyeon"]
//
////func backword { }( _ name1: String, _ name2: String) throws -> Bool
////    return name1 > name2
////}
//
////print( name.sorted(by: backword) )
//
////클로저 표현식 적용
//var orderOpt = { (_ name1: String, _ name2: String) -> Bool in
//    return name1 > name2
//}
//print( name.sorted(by: orderOpt))
//
//func sampleCloser(closer: (String, String) -> String) {
//    closer("A", "B")
//}
//
////클로저 줄여보기
//sampleCloser(closer: {(a: String, b: String) -> String in
//    return a + b
//})
//sampleCloser(closer: {(a: String, b: String) in
//    return a + b
//})
//sampleCloser(closer: {(a: String, b: String) in
//    a + b
//})
//sampleCloser(closer: {
//    $0 + $1
//})
//
//sampleCloser(){
//    $0 + $1
//}
//sampleCloser(){ //-----------------------------------------------------후행클로저
//    $0 + $1
//}
//sampleCloser { //---파라미터 내 타입이 없으므로 () 생략 가능함
//    $0 + $1
//}
//


// 맵, 필터, 리듀스


// for-in vs Map
//let numbers = [0, 1, 2, 3, 4]
//
//var dNumbers = [Int]()
//var strs = [String]()
//
//for num in numbers {
//    dNumbers.append(num * 2)
//    strs.append("\(num)")
//}
//
//dNumbers = numbers.map({ (num: Int) -> Int in
//    return num * 2
//})
//
//strs = numbers.map({ (num: Int) -> String in
//    return "\(num)"
//})
//
//// 클로저 축약 표현
//dNumbers = numbers.map({
//    return $0 * 2
//})
//
//dNumbers = numbers.map({ $0 * 2 })
//
//dNumbers = numbers.map { $0 * 2 }
//print(dNumbers)
//
//
//strs = numbers.map({
//    return "\($0)"
//})
//
//strs = numbers.map({"\($0)"})
//
//strs = numbers.map {"\($0)"}
//print(strs)


//클로저 표현식의 반복
//let evenNumbers = [0, 2, 4, 6, 8]
//let oddNumbers = [0, 1, 3, 5, 7]
//
//let dubleNumber: (Int) -> Int = { $0 * 2 } //이렇게도 가능
//
//evenNumbers.map(dubleNumber)
//oddNumbers.map(dubleNumber)
//
//let opt: Int? = 5
//let resultopt = opt.map { $0 * 2 }
//print(resultopt)
//
//
//let range = (1...5)
//let resultrange = range.map { $0 * 2 }
//print(resultrange)
//// 와 같다
//print((1...5).map { $0 * 2 })
//
//
//let numbers = [0, 1, 2, 3, 4]
//
//numbers.filter( {(num: Int) -> Bool in
//    return num % 2 == 0
//})
//
//// map 과 함께
//let result = numbers.map { $0 * 3 }.filter{ $0 % 2 == 0 }
//print(result)
//
////축약
//
//


//------------------------------------------------클로저 예제 1
print("------클로저 예제 1------")
//let add: (Int, Int) -> Int = { $0 + $1 }
// -> 모두 정수
//------------------------------------------------클로저 예제 2
print("------클로저 예제 2------")
let numbers = [1, 2, 3, 4, 5]
print(numbers.map { $0 * 10 } )
//------------------------------------------------클로저 예제 3
print("------클로저 예제 3------")
print(numbers.filter{ $0 % 2 == 1 })
//------------------------------------------------클로저 예제 4
print("------클로저 예제 4------")
print(numbers.reduce( 0 , + ))
//------------------------------------------------클로저 예제 5
print("------클로저 예제 5------")
print(numbers.map { String($0) })
//------------------------------------------------ 맵, 필터, 리듀스 예제 1
print("------맵, 필터, 리듀스 예제 1------")
func sumOfSquaresOfOdds(array: [Int]) -> Int {
    return array.filter { $0 % 2 == 1 }.reduce(into: 0) { $0 += $1 * $1 }
}


let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(sumOfSquaresOfOdds(array: array)) //165

//------------------------------------------------ 맵, 필터, 리듀스 예제 2
print("------맵, 필터, 리듀스 예제 2------")
//func reverseWithoutVowels(_ string: String) -> String {
//    return String(string.filter { String($0) != "a" && String($0) != "e" && String($0) != "i" && String($0) != "w" && String($0) != "u" && String($0) != "o" }.uppercased().reversed())
//}
func reverseWithoutVowels(_ string: String) -> String {
    return String(string.filter { !"aeiouAEIOU".contains($0) }.uppercased().reversed())
}

let string = "Hello World"

print(reverseWithoutVowels(string))
//------------------------------------------------ 맵, 필터, 리듀스 예제 3
print("------맵, 필터, 리듀스 예제 3------")
func sumOfKeysWithEvenValues(_ dictionary: [String: Int]) -> Int {
    return dictionary.values.filter { $0 % 2 == 0 }.reduce(0, +)
}

let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
print(sumOfKeysWithEvenValues(dictionary))

//------------------------------------------------ 맵, 필터, 리듀스 예제 4
print("------맵, 필터, 리듀스 예제 4------")

func differenceBetweenMaxAndMin(_ array: [Int]) -> Int {
    guard !array.isEmpty else { return 0 }
    return array.reduce(Int.min){ max($0, $1) } - array.reduce(Int.max){ min($0, $1) }
}

let array1 = [10, 20, 30, 40, 50]
print(differenceBetweenMaxAndMin(array1))
//------------------------------------------------ 맵, 필터, 리듀스 예제 5
print("------맵, 필터, 리듀스 예제 5------")

func countElements(_ array: [String]) -> [String: Int]{
    var dict = [String : Int]()
    array.forEach { i in
        dict[i] = (dict[i] ?? 0) + 1
    }
    return dict
}
let array2 = ["a", "b", "a", "c", "b", "d"]
print(countElements(array2))
//------------------------------------------------ 맵, 필터, 리듀스 예제 6
print("------맵, 필터, 리듀스 예제 6------")
func mostFrequentElement(_ array: [String]) -> String {
    var dict = [String : Int]()
    array.forEach { i in
        dict[i] = (dict[i] ?? 0) + 1
    }
    return dict.max(by: { $0.value < $1.value })!.key
}
let array3 = ["a", "b", "a", "c", "b", "d"]
print(mostFrequentElement(array3))
//------------------------------------------------ 맵, 필터, 리듀스 예제 7
print("------맵, 필터, 리듀스 예제 7------")
let star: (String) -> String = { "*" + $0 + "*"  }

func addStars(_ array: [String]) -> [String] {
    return array.map(star)
}
let array4 = ["a", "b", "c"]
print( addStars(array4) )   // ["*a*", "*b*", "*c*"]
//------------------------------------------------ 맵, 필터, 리듀스 예제 8
print("------맵, 필터, 리듀스 예제 8------")
func sumOfMultiplesOfThree(_ array: [Int]) -> Int {
    return array.filter{ $0 % 3 == 0 }.reduce(0) { $0 + $1 }
}
let array5 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print( sumOfMultiplesOfThree(array5) )   // 18
//------------------------------------------------ 맵, 필터, 리듀스 예제 9
print("------맵, 필터, 리듀스 예제 9------")

//func repeatTwice(_ array: [String]) -> [String] {
//    return array.reduce(into: [String]()){ $0 += [$1, $1] }
//}
func repeatTwice(_ array: [String]) -> [String] {
    return array.flatMap { [$0, $0] }
}
let array6 = ["a", "b", "c"]
print( repeatTwice(array6))   // ["a", "a", "b", "b", "c", "c"]
//------------------------------------------------ 맵, 필터, 리듀스 예제 10
print("------맵, 필터, 리듀스 예제 10------")
func lengthsOfElements(_ array: [String]) -> [Int] {
    return array.map { $0.count }
}

let array7 = ["apple", "banana", "cherry"]
print( lengthsOfElements(array7))   // [5, 6, 6]
//------------------------------------------------ 맵, 필터, 리듀스 예제 11
print("------맵, 필터, 리듀스 예제 11------")
func countVowels(_ word: String) -> Int {
    word.filter { "aeiou".contains($0.lowercased()) }.count
}
let word1 = "swift"
let vowelCount = countVowels(word1)
print(vowelCount) // 1
//------------------------------------------------ 맵, 필터, 리듀스 예제 12
print("------맵, 필터, 리듀스 예제 12------")

//func countAlphabets(_ word: String) -> [String : Int] {
//    var dict = [String : Int]()
//    word.forEach { i in
//        dict[String(i)] = (dict[String(i)] ?? 0) + 1
//    }
//    return dict
//}
func countAlphabets (_ str: String) -> [Character : Int] {
    return str.filter{ $0.isLetter }.reduce(into: [:]){ $0[ $1, default: 0] += 1}
}
let word2 = "Hello2World!!"
let alphabetCount = countAlphabets(word2)
print(alphabetCount)  // ["e": 1, "o": 2, "r": 1, "H": 1, "W": 1, "d": 1, "l": 3]
//------------------------------------------------ 맵, 필터, 리듀스 예제 13
print("------맵, 필터, 리듀스 예제 13------")
func capitalize(_ sentence: String) -> String {
    sentence.split(separator: " ")
            .map { String($0).prefix(1).uppercased() + String($0).suffix($0.count - 1) }
            .joined(separator: " ")
}
let sentence = "this is a test"
let capitalizedSentence = capitalize(sentence)
print(capitalizedSentence)      // "This Is A Test"
//------------------------------------------------ 맵, 필터, 리듀스 예제 14
print("------맵, 필터, 리듀스 예제 14------")
func reverse(_ numbers: [Int]) -> [Int] {
    numbers.reduce([]) { [$1] + $0 }
}
//func reverse(_ numbers: [Int]) -> [Int] {
//    numbers.map { numbers.count - 1 - numbers.firstIndex(of: $0)! }
//}
let numbersa = [1, 3, 4, 2, 5]
let reversedNumbers = reverse(numbersa)
print(reversedNumbers)      // [5, 2, 4, 3, 1]
//------------------------------------------------ 맵, 필터, 리듀스 예제 15
print("------맵, 필터, 리듀스 예제 15------")

func uppercase(_ word: String ) -> String {
    word.map { ($0).isUppercase ? String($0).lowercased() : String($0).uppercased() }.joined()
}
let word = "swift"
let uppercasedWord = uppercase(word)
print(uppercasedWord)       // "SWIFT"
//------------------------------------------------ 맵, 필터, 리듀스 예제 16
print("------맵, 필터, 리듀스 예제 16------")
func removeSpaces(_ sentence: String) -> String {
    sentence.filter { String($0) != " " }
}
let sentence3 = "This is a test"
let noSpaceSentence = removeSpaces(sentence3)
print(noSpaceSentence)      // "Thisisatest"
