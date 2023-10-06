//
//  main.swift
//  practice_datastructure
//
//  Created by 황민채 on 2023/10/04.
//

import Foundation

//var stack: [Int] = []
//print(stack.popLast())
//stack.append(1)
//print(stack)
//print(stack.popLast()!)
//print(stack)
//---------------------------------------------------
//var input = readLine()!.map { String($0) }
//var stack: [String] = []
//
//while input.isEmpty == true {
//    if stack.isEmpty == true {
//        stack.append(input[0])
//        input.popFirst()!
//    }
//    if stack[0] == "{" {
//        if input[0] == "}" {
//            stack.append(input[0])
//            input.popFirst()!
//        }
//    }else if stack[0] == "[" {
//        if input[0] == "]" {
//            stack.append(input[0])
//            input.popFirst()!
//        }
//    }else if stack[0] == "(" {
//        if input[0] == ")" {
//            stack.append(input[0])
//            input.popFirst()!
//        }
//}


//let input = "()()"
//var stack: [Character] = []
//
//for char in input {
//    print(char)
//    if char == "(" {
//        stack.append(char)
//    }else if char == ")"{
//        stack.popLast()
//    }
//}
//
//print(stack.isEmpty)



//---------------------------------------------------

//var string = readLine()!.dropLast().dropFirst()
//var array = string.split(separator: " ").map{ ($0) }
//var stack: [Int] = []
//var sum: Int = 0


//while true {
//    if array[0] == "+" || array[0] == "*" {
//        if array[0] == "+" {
//            stack[0] = stack.reduce(0, +)
//            stack.removeLast()
//            array.removeFirst()
//            print(array)
//            print(stack)
//        }else if array[0] == "*" {
//            stack[0] = stack.reduce(1, *)
//            stack.removeLast()
//            array.removeFirst()
//            print(array)
//            print(stack)
//        }
//    }else {
//        stack.append(Int(array[0])!)
//        array.removeFirst()
//        print(array)
//        print(stack)
//    }
//    if array.isEmpty == true {
//        break
//    }
//
//}
//print(stack[0])

//---------------------------------------------------
//민재님 1번코드

//var stack: [String] = "()()".map { String($0) }
//var leftValue: [String] = []
//var rightValue: [String] = []
//var flag: Bool = true
//
//while(!stack.isEmpty) {
//    print(stack)
//    print(leftValue)
//    print(rightValue)
//    if stack.last! == "(" {
//        if !rightValue.isEmpty && rightValue.last! == ")" {
//            stack.removeLast()
//            rightValue.removeLast()
//        } else {
//            leftValue.append(stack.popLast()!)
//        }
//    } else if stack.last! == "{" {
//        if !rightValue.isEmpty && rightValue.last! == "}" {
//            stack.removeLast()
//            rightValue.removeLast()
//        } else {
//            leftValue.append(stack.popLast()!)
//        }
//    } else if stack.last! == "[" {
//        if !rightValue.isEmpty && rightValue.last! == "]" {
//            stack.removeLast()
//            rightValue.removeLast()
//        } else {
//            leftValue.append(stack.popLast()!)
//        }
//    } else {
//        rightValue.append(stack.popLast()!)
//    }
//}
//leftValue.isEmpty && rightValue.isEmpty ? print("true") : print("false")

//---------------------------------------------------
//스택 3번
//스택을 이용하여 중위 표기법(infix notation)으로 된 수식을 후위 표기법으로 변환하는 알고리즘을 구현하세요.
//예를 들어, "( 2 + 3 ) * 4"는 "2 3 + 4 *"로 변환됩니다. 입력은 공백으로 구분된 문자열로 받으며, 출력은 공백으로 구분된 문자열로 반환하세요.
//---------------------------------------------------

//var array = readLine()!.map{ ($0) } // 처음 받은 배열 ex)  ["A", "*", "(", "B", "+", "C", ")"]
//
//var stack: [String] = [] //스택엔 연산자와 괄호
//var intstack: [Int] = [] //인트스택엔 정수
//var output = []
//while true {
////    if output.count == 2 {
////        [0] = String(intstack[0])
////        intstack.removeAll()
////        newArr.append(stack[stack.endIndex])
////        stack.removeLast()
////    }
//    if
//    if array[0] == "+" || array[0] == "*" || array[0] == "-" || array[0] == "/" {
//        if array[0] == "+" {
//            stack.append("+")
//            array.removeFirst()
//        }else if array[0] == "-" {
//            stack.append("-")
//            array.removeFirst()
//        }else if array[0] == "*" {
//            stack.append("*")
//            array.removeFirst()
//        }else if array[0] == "/" {
//            stack.append("/")
//            array.removeFirst()
//        }
//    }else if array[0] == "(" || array[0] == ")"{ //
//        if array[0] == "(" {
//            stack.append("(")
//            array.removeFirst()
//        }else if array[0] == ")" {
//            stack.append(")")
//            array.removeFirst()
//        }
//    }else {
//        output.append(array[0])
//        array.removeFirst()
//    }
//
//    if array.isEmpty == true {
//        break //탈출조건
//    }
//}
//
//
//
//let result = newArr.joined(separator: " ")
//print(result)

//---------------------------------------------------
//  이진 탐색
//---------------------------------------------------

//func binary_serch(list: [Int], item: Int) -> Int? {
//    var low = 0
//    var high = list.count
//
//    while low <= high {
//        //print("==")
//        let mid = (low + high) / 2
//        if list[mid] == item {
//            return mid
//        }
//        if list[mid] > item {
//            high = mid - 1
//        } else {
//            low = mid + 1
//        }
//    }
//    return nil
//}
//let testArray = [8, 6, 4, 7, 9]
//binary_serch(list: testArray, item: 7)
//print(testArray)


//var array = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = array[0]
//let M = array[1]
//if 100 * N - M >= 0 {
//    print("Yes")
//}else {
//    print("No")
//}
//---------------------------------------------------
//  좌표압축
//---------------------------------------------------
//let N = Int(readLine()!)!
//var array = readLine()!.split(separator: " ").map{ Int($0)! }
//
//2 > 4 만족하는 서로다른 4의 개수



//---------------------------------------------------
//  강사님 예제3 풀이
//---------------------------------------------------

//func infixToPostfix(_ expression: String) -> String {
//    var result = ""
//    var stack: [String] = []
//    let tokens = expression.split(separator: " ")
//    for token in tokens {
//        if let _ = Int(token) {
//            result += token + " "
//        } else if token == "(" {
//            stack.append(String(token))
//        } else if token == ")" {
//            while let top = stack.popLast(), top != "("{
//                result += top + " "
//            }
//        }else {
//                stack.append(String(token))
//        }
//    }
//    while let top = stack.popLast(){
//        result += top + " "
//    }
//    return result
//}
//var input = readLine()!
//var input1 = infixToPostfix(input)
//print(input1)


//Int("123") == nil : 숫자아님 : 숫자임

//var N = Int(readLine()!)!
//var array = readLine()!.map{ ($0) }
//var abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { ($0) }
//print (abc, array)
//
//for i in 0..<N {
//    let a = String(readLine()!)
//    array[array.index(of: abc[i])] = a
//}
//var stack: [Int] = []
//var sum: Int = 0
//
//
//while true {
//    if array[0] == "+" || array[0] == "*" {
//        if array[0] == "+" {
//            stack[0] = stack.reduce(0, +)
//            stack.removeLast()
//            array.removeFirst()
//            print(array)
//            print(stack)
//        }else if array[0] == "*" {
//            stack[0] = stack.reduce(1, *)
//            stack.removeLast()
//            array.removeFirst()
//            print(array)
//            print(stack)
//        }
//    }else {
//        stack.append(Int(array[0])!)
//        array.removeFirst()
//        print(array)
//        print(stack)
//    }
//    if array.isEmpty == true {
//        break
//    }
//
//}
//print(stack[0])
