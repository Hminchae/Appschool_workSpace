//
//  main.swift
//  optional chaning
//
//  Created by 황민채 on 10/25/23.
//

import Foundation

/*
- Force unwrapping : ! 강제로 옵셔널 추출
- Optional Binding : if let, guard let 바인딩하여 옵셔널 추출
- Optional Chaining: ?.?.?. 체인 형태(연쇄적)로 옵셔널에 접근하여 추출


class Residence {
    var numberRooms = 1
}

class Person {
    var residence: Residence?
}

let park = Person()
//let roomNumber = park.residence!.numberRooms  // 강제 언레핑 이용시 runtime error
park.residence = Residence()

if let roomNumber = park.residence?.numberRooms {
    print(roomNumber)
} else {
    print("Not!! roomNumber")
}
*/


//-----------------------------------------------------옵셔널 체이닝 예제 01
print("------------------ 옵셔널 체이닝 예제 01 --------------------")
print()


struct Person {
    var name: String?
    var age: Int?
}

var person: Person? = Person(name: "Kim", age: 25)

print(person?.name ?? "바보")
print(person?.age ?? "바보")

if let name = person?.name {
    print(name)
} else {
    print("no name")
}

//-----------------------------------------------------옵셔널 체이닝 예제 02
print("------------------ 옵셔널 체이닝 예제 02 --------------------")
print()

struct Author {
    var name: String?
}

struct Book {
    var title: String?
    var author: Author?
}

var book: Book? = Book(title: "The Little Prince", author: Author(name: "Antoine de Saint-Exupéry"))

print(book?.title ?? "access warning")              // The Little Prince
print(book?.author?.name ?? "access warning" )       // Antoine de Saint-Exupéry

if let name = book?.author?.name {
    print(name)
} else {
    print("that book doesn't have name")
}
//-----------------------------------------------------옵셔널 체이닝 예제 03
print("------------------ 옵셔널 체이닝 예제 03 --------------------")
print()
var numbers: [Int]? = [1, 2, 3]

print(((numbers?[0]) ?? 0) + 10)
//-----------------------------------------------------옵셔널 체이닝 예제 04
print("------------------ 옵셔널 체이닝 예제 04 --------------------")
print()

var students: [String: Int]? = ["Kim": 90, "Lee": 80, "Park": 85]

print((students?["Lee"] ?? 0) + 1)
//-----------------------------------------------------옵셔널 체이닝 예제 05
print("------------------ 옵셔널 체이닝 예제 05 --------------------")
print()

class Animal {
    func speak() {
        print("...")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof")
    }
}

var animal: Animal? = Dog()
animal?.speak()
//-----------------------------------------------------옵셔널 체이닝 예제 06
print("------------------ 옵셔널 체이닝 예제 06 --------------------")
print()
struct Matrix {
    var elements: [[Int]]

    func transpose() -> Matrix {
        var result = [[Int]]()
        for i in 0..<elements[0].count {
            var row = [Int]()
            for j in 0..<elements.count {
                row.append(elements[j][i])
            }
            result.append(row)
        }
        return Matrix(elements: result)
    }
}

var matrix: Matrix? = Matrix(elements: [[1, 2, 3], [4, 5, 6]])
print(matrix?.transpose().elements ?? 0)
