//: [Previous](@previous)
//김모씨 3729, 귤을 한 사람당 52개씩 박스
//사람들에게 줄 수 있는 박스의 수, 남은 귤갯수 ?
import Foundation

let orange = 3729
let number = 52

var people : Int = orange / number
print(orange % 71)
//: [Next](@next)
print("김모씨가 귤 박스를 줄 수 있는 박스의 수는 ? \(people)")
print("박스에 담고 남은 귤 수는",orange % people)
