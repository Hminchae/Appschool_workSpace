//
//  HUtility.swift
//  swiftUI_practice
//
//  Created by 황민채 on 2023/10/20.
//

import Foundation


class HUtility {
    func something(_ a: Int,_ b:Int) -> Int {
        if a == b {
            return a + b
        }else {
            return a - b
        }
    }
    func isLeapYear(_ year: Int) -> Bool {
        return year % 4 == 0 
    }
}
