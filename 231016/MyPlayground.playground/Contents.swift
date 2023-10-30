import UIKit
import Foundation

var greeting = "Hello, playground"

class BankAccount {
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    init(<#parameters#>) {
        <#statements#>
    }



    //인스턴스 메서드
    func diplayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountNumber)")

    }
}

let account1 = BankAccount()
account1.diplayBalance()


