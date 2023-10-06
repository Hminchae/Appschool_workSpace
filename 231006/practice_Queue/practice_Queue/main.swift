//
//  main.swift
//  practice_Queue
//
//  Created by 황민채 on 2023/10/06.
//

import Foundation

//// Double-end Queue
//var dq = [Character]()
//// 왼쪽에 요소(항목)를 추가
//dq.insert("l", at: 0)
//dq.insert("o", at: 0)
//
//// 오른쪽에 요소(항목)를 추가
//dq.append("a")
//
//// 왼쪽에서 요소를 제거하고 반환
//dq.removeFirst() // o
//
//// 오른쪽에서 요소를 제거하고 반환
//dq.removeLast() // a

var numbers = [6, 5, 1, 4, 7, 2, 3]

func quickSort(_ array: [Int]) -> [Int] {
    
    if array.count <= 1 {
        return array
    }
    let pivot = array[0] // 첫째 원소
    let left = array.filter { $0 < pivot } // 피벗 왼쪽으로 몰기
    let right = array.filter { $0 > pivot } // 피벗 오른쪽으로 몰기
    
    return quickSort(left) + [pivot] + quickSort(right)
}

print(quickSort(numbers))


func quickSort2(_ array: [Int]) -> [Int] {


}
