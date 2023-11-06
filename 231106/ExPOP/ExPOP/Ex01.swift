//
//  Ex01.swift
//  ExPOP
//
//  Created by 황민채 on 11/6/23.
//
//프로토콜 예제 01
import SwiftUI

struct Ex01: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
protocol Greeting {
    var name: String { get }
    func sayHello()
}

//...
let person = Person(name: "park")
person.sayHello()     // Hello, park!
