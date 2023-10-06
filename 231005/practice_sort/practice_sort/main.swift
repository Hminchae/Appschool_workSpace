//
//  main.swift
//  practice_sort
//
//  Created by 황민채 on 2023/10/05.
//

import Foundation



//------------------------------------------------------
//            * 버블정렬(내 코드)
//------------------------------------------------------

//let originarray: [Int] = [4, 754, 3, 75, 34, 76, 23, 54]
//var array = originarray
//let n = array.count
//for _ in 0..<n{
//    for j in 0..<n-1 {
//    var temp: Int = 0
//        if array[j] > array[j+1] {
//            temp = array[j]
//            array[j] = array[j+1]
//            array[j+1] = temp
//            print(array)
//        }
//    }
//}
//print(array)

//------------------------------------------------------
//            * 버블정렬(강사님 코드)
//------------------------------------------------------


//func bubbleSort(_array: [Int]) -> [Int]{
//    var sortedArray = array
//    let n = sortedArray.count
//    for i in 0..<n-1 {
//        for j in 0..<n-1-i {
//            if sortedArray[j] > sortedArray[j+1] {
//                sortedArray.swapAt(j, j+1)
//            }
//        }
//        return
//    }
//}
//------------------------------------------------------
//            * 선택정렬(내 코드)
//------------------------------------------------------
//let originarray: [Int] = [4, 754, 3, 75, 34, 76, 23, 54]
//var array = originarray
//let n = array.count
//
//for i in 0..<n {
//    var min = i
//    for j in i+1..<n {
//        if array[min] > array[j] {
//            min = j
//        }
//
//        }
//    if array[i] != min {
//        array.swapAt(i, min)
//    }
//}
//print(array)
//------------------------------------------------------
//            * 선택정렬(강사님 코드)
//------------------------------------------------------

//class MusicCD: CustomStringConvertible {
//    var song = ""
//    var singer = ""
//    var numPlay = 0
//
//    init(song: String = "", singer: String = "", numPlay: Int = 0) {
//        self.song = song
//        self.singer = singer
//        self.numPlay = numPlay
//    }
//
//    var description: String {
//        return "\(numPlay), \(song), \(singer)"
//    }
//}
//
//
//func bubbleSort(_ array: [MusicCD]) -> [MusicCD] {
//    var sortedArray = array
//    let n = sortedArray.count
//    for i in 0..<n-1 {
//        for j in 0..<n-1-i {
//            if sortedArray[j].numPlay > sortedArray[j+1].numPlay {
//                sortedArray.swapAt(j, j+1)
//            }
//        }
//    }
//    return sortedArray
//}
//
//
//var musicCDList: [MusicCD] = []
//musicCDList.append( MusicCD(song: "롤린 (Rollin')", singer: "브레이브걸스", numPlay: 156) )
//musicCDList.append( MusicCD(song: "Celebrity", singer: "아이유", numPlay: 141) )
//musicCDList.append( MusicCD(song: "On The Ground", singer: "로제 (ROSÉ)", numPlay: 35) )
//musicCDList.append( MusicCD(song: "LOVE DAY (2021)", singer: "양요섭, 정은지", numPlay: 94) )
//
//for item in bubbleSort(musicCDList).reversed() {
//    print(item)
//}
//------------------------------------------------------
//            * 재귀
//------------------------------------------------------
//func fac(_ i: Int) -> Int{
//    print(i)
//
//    if i == 1 {
//        return 1
//    }else {
//        return i * fac(i - 1)
//    }
//}
//print(fac(5))
//------------------------------------------------------
//            * 재귀 예제 1
//------------------------------------------------------
//func count(_ i: [Int]) -> Int{
//    var arr = i
//    arr.popLast()
//    print(arr)
//    if arr.isEmpty{
//        return 1
//    }else {
//        return 1 + count(arr)
//    }
//}
//print("-------------------------")
//print(count([1,2,3,4,5]))
//------------------------------------------------------
//            * 재귀 예제 2
//------------------------------------------------------
//func max(_ i: [Int]) -> Int{
//    var arr = i
//    if arr[0] < arr[1] {
//        arr.removeFirst()
//        return max(arr)
//    }else {
//        return arr[0]
//    }
//}
//print("-------------------------")
//print(max([1,2,6,9,10,3,4]))

//------------------------------------------------------
//            * 재귀 예제 3
//------------------------------------------------------
//func fib(_ i: Int) -> Int{
//    if i == 1 || i == 2 {
//        return 1
//    }else {
//        return fib(i-1) + fib(i-2)
//    }
//
//}
//print("-------------------------")
//print(fib(5))
//print( (1...9).map { fib($0) } )
//------------------------------------------------------
//            * 재귀 예제 4
//------------------------------------------------------
//func divideSquare(_ x :Int, _ y :Int) -> Int{
//    if y == 0 {
//        return x
//    }else {
//        return divideSquare(y, x % y)
//    }
//}
//
//
//print(divideSquare(1680, 640))


//어떤수의 제곱이 1680과 640 에 나누어 떨어져야함
// 큰수부터 시작

//let N = Int(readLine()!)!
//var stack: [Int] = []
//
//while let input = readLine(){
//    let array = input.split(separator: " ").map{ ($0) }
//    let command = array[0]
//    var a = 0
//    if array.count == 2{
//         a = Int(array[1])!
//    }
//    if command == "push"{
//        stack.append(a)
//    }else if command == "pop" {
//        if stack.isEmpty == true {
//            print(-1)
//        }else {
//            print(stack[stack.index(before: stack.endIndex)])
//            stack.removeLast()
//        }
//
//    }else if command == "size" {
//        print(stack.count)
//    }else if command == "empty"{
//        if stack.isEmpty == true {
//            print(1)
//        }else {
//            print(0)
//        }
//    }else if command == "top" {
//        if stack.isEmpty == true {
//            print(-1)
//        }else {
//            print(stack[stack.index(before: stack.endIndex)])
//        }
//
//    }
//}

//func solution(_ num_list:[Int]) -> [Int] {
//    var array = num_list
//    var a = array.count
//    var result = 0
//    if array[a-1] > array[a-2] {
//        result = array[a-1] - array[a-2]
//        array[a-1] = result
//        return array
//    }else {
//        result = 2 * (array[a-1])
//        array[a-1] = result
//        return array
//    }
//}


//func solsution(_ n:Int, _ control:String) -> Int {
//    var num = n
//    var newArr = control.map { ($0) }
//    for i in newArr {
//        if i == "w"{
//            num += 1
//        }else if i == "s"{
//            num -= 1
//        }else if i == "d"{
//            num += 10
//        }else if i == "a"{
//            num -= 10
//        }
//
//    }
//    return num
//}
//
//func solution(_ numLog:[Int]) -> String {
//    let newArr = numLog
//    var str = ""
//    var temp = 0
//
//    for i in 0..<newArr.count-1 {
//       temp = newArr[i+1] - newArr[i]
//        if temp == 1 {
//            str += "w"
//        }else if temp == -1 {
//            str += "s"
//        }else if temp == 10 {
//            str += "d"
//        }else if temp == -10 {
//            str += "a"
//        }
//    }
//    return str
//}
//
//solution([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1])


//def recursion(s, l, r):
//    if l >= r: return 1
//    elif s[l] != s[r]: return 0
//    else: return recursion(s, l+1, r-1)
//
//def isPalindrome(s):
//    return recursion(s, 0, len(s)-1)
//
//print('ABBA:', isPalindrome('ABBA'))
//print('ABC:', isPalindrome('ABC'))


//func ispalindrome( _arr : [String]){
//    return reculsion(s, 0, s.count-1)
//}
//func reculsion( _arr: [String], _a: Int, _b: Int){
//    if 1 >= r {
//        return 1
//    }else if 1] != s[b] {
//        return 0
//    }else {
//        return reculsion(s,0 )
//    }
//}
//------------------------------------------------------
//            * 재귀 예제 4
//------------------------------------------------------

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//let newArr = Array(array[3...])
//print(newArr)


//Iterater (반복자)

func fibs() -> AnyIterator<Int> {
    var a = 0
    var b = 1
    return AnyIterator {
        (a, b) = (b, a + b)
        return a
    }
}

let f = fibs()
print(f.next()!)
print(f.next()!)
print(f.next()!)


func fib2(_ n: Int) -> [Int] {
    var fibList = [1, 1]
    if n == 1 || n == 2 {
        return fibList
    }
    for i in 2..<n {
        fibList.append(fibList[i-1] + fibList[i-2])
    }
    return fibList
}

//배열에 남겨두는 컨셉

print(fib2(9))


