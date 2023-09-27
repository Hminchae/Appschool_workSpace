//import Foundation
//
//let X: String = "12345"
//let Y: String = "34567"
//
//let arrX = Array(X)
//let arrY = Array(Y)
//
////let arrZ = arrX.intersection(arrY)
//
//
////let str = arr?.joined(separator: "")
//import Foundation
//
//func solution(_ array:[Int]) -> Int {
//    //var sortedArr: [Int] = array.sort()
//    var anotherArr: [Int] = array
//    anotherArr.sort() //왜 array를 바로 sort 해서 못쓰지????
//    var a = array.count/2
//    return anotherArr[a]
//
//
//
//    3
//    4
//    5
//    6
//    import Foundation
//
//    func solution(_ n:Int) -> [Int] {
//        return (0...n).filter {$0 % 2 == 1}.sorted(by: <)
//    }


import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var arr = Array(X)
    print(arr)
