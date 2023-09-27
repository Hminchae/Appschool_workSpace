//
//  main.swift
//  for_array_etc
//
//  Created by 황민채 on 2023/09/27.
//

import Foundation



//-------------------------
//Class 예제 06
//-------------------------

//class TV{
//    var name: String
//    var year: Int
//    var size: Int
//    init(name: String, year: Int, size: Int) {
//        self.name = name
//        self.year = year
//        self.size = size
//    }
//
//    func show(){
//        print("\(self.name)에서 만든 \(self.year)년형 \(self.size)인치 TV")
//    }
//}
//
//let myTV = TV(name: "LG", year: 2023, size:48)
//myTV.show()

//class Shape{
//    var size: Int = 1
//
//    init(size: Int) {
//        self.size = size
//    }
//    func printShape(start: Int, end: Int, shape: String)->String{
//        var result: String = ""
//        for _ in start...end{
//            result += shape
//        }
//        return result
//    }
//    func drawShape() -> String{
//        var str = ""
//        for i in 1...size{
//            str += printShape(start: 1, end: i, shape: "*") + "\n"
//        }
//        return str
//    }
//    func drawInvShape() -> String{
//        var str = ""
//        for i in (1...size).reversed(){
//            str += printShape(start: 1, end: i, shape: "*") + "\n"
//        }
//        return str
//    }
//}
//let shape = Shape(size: 10)
//print(shape.drawShape() + shape.drawInvShape())

//
//var Arr = [String](repeating: "뿌엥", count: 10)
//print(Arr)

//각 객체? object
//
//Arr.insert("바보",at: 0)
//print(Arr)
//
////배열 인덱스 위치에서 삭제
//print(Arr.removeLast())
//print(Arr.removeFirst())
//print(Arr.count)




//---------------------------------
// 배열 예제 01
//---------------------------------
//1
//var array: [Int]
//2
//var array: [Int] = [Int](repeating:0, count: 10)
////3
//print(array)
//for i in 0...9{
//    array[i] = Int.random(in:1...20)
//}
////4
//print(array)
////5
////print(array[3] + array[8])
////6
//var new: Int = 0
//for i in array{
//    new += i
//}
//print(array)
//print(new)
////7
//var new1: Int = 0
//for i in array{
//   new1 += i
//}
//
//print(array.count)
//print(new1/array.count)

//---------------------------------
// 배열 예제 02
//---------------------------------

//var arr: [Int] = [Int](repeating:0, count: 10)
//for i in 0...9{
//    arr[i] = Int.random(in:1...20)
//}
//var array: [Int] = []
//for i in arr{
//    if i % 2 == 0 {
//        array.append(i)
//    }else {
//        continue
//    }
//}
//array = array.sorted()
//print("array에 들어 있는 홀수는\(array)입니다.")
//print("array에 들어 있는 홀수는\(array)이며, 총 \(array.count)개 입니다.")

//---------------------------------
// 배열 예제 04
//---------------------------------
//var arr: [Int] = [Int](repeating:0, count: 10)
//for i in 0...9{
//    arr[i] = Int.random(in:1...20)
//}
//
//print("가장 큰 값은 \(arr.max()!)입니다.")
//---------------------------------
// 배열 예제 05
//---------------------------------

//var arr: [Int] = [Int](repeating:0, count: 10)
//for i in 0...9{
//    arr[i] = Int.random(in:1...20)
//}
//
//print("가장 작은 값은 \(arr.min()!)입니다.")
//---------------------------------
// 배열 예제 06 -> 모르겠음 ㅜ
//---------------------------------

//var crr: [String] = ["수", "박"]
////var drr: String = crr.joined()
////var newarr = Array(drr)
//
//print("=======수박게임시작========")
//print("숫자를 입력해주세요:",terminator: "")
//var num: Int = Int(readLine()!)!
//for i in 0..<num{
//    print(crr[i % 2],terminator: "")
//}

//---------------------------------
// 배열 예제 07
//---------------------------------
//var arr: [Int] = []
//
//for i in 1...10{
//    print("\(i) 번째 정수 입력:", terminator: "")
//    let a = Int(readLine()!)!
//    arr.append(a)
//}
//var newArr: [Int] = []
//
//for i in arr{
//    if i % 3 == 0{
//        newArr.append(i)
//    }else{
//        continue
//    }
//}
//print("3의 배수:",terminater:"")
//print(newArr)


//---------------------------------
// 배열 예제 08
//---------------------------------
//let answer: [Int] = [1, 1, 4, 2, 3]
//var youranswer: [Int] = []
//var score: [String] = []
//print("=====  채점하기!  =====")
//print("답을 입력하세요.")
//for i in 1...5{
//    print("\(i)번답:",terminator: "")
//    var x = Int(readLine()!)!
//    youranswer.append(x)
//}
//print("=====  정답확인  =====")
//for i in 0...4{
//    if answer[i] == youranswer[i]{
//        score.append("O")
//        print("O",terminator: " ")
//    }else{
//        score.append("x")
//        print("X",terminator: " ")
//    }
//}
//
//var sc: Int = 0
//for i in score{
//    if i == "O"{
//      sc += 20
//    }else{
//        continue
//    }
//}
//print("총점: \(sc)")
////var x: Int = score.count(for: "O")

//---------------------------------
// 배열 예제 09
//---------------------------------
//
//
//var a: [Int] = [3, 4, 4, 2, 1]
//for i in a{
//    print("\(i):",terminator: "")
//    for _ in 1...i{
//        print("*",terminator: "")
//    }
//    print()
//}
//











