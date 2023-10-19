import Foundation

enum TemperatureError: Error {
    case invalidTemperature //에러 정의
}

func celsiusToFahrenheit(_ x: Double) throws -> Double {
    guard abs(x) <= 100 else {
        throw TemperatureError.invalidTemperature
    }
    return (x * 1.8) + 32
}

do {
    let fahrenheit = try celsiusToFahrenheit(99) //섭씨를 화씨로
    print(fahrenheit)
} catch TemperatureError.invalidTemperature {
    print("Invalid temperature")
}

//------------------------------------------------------------------------------

enum PasswordError: Error {
    case tooShort
    case missingUppercase
    case missingLowercase
    case missingNumber
    case missingSymbol
}

let symbols: Set<String> = Set("!@#$%^&*()_+-=[]{}|;:,./<>?".map { String($0) })
let upper: Set<String> = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { String($0) })
let lower: Set<String> = Set("abcdefghijklmnopqrstuvwxyz".map { String($0) })
let number: Set<String> = ["1","2","3","4","5","6","7","8","9","0"]

func validatePassword(_ x: String)throws {
    var arr = x.map { String($0) }
    var setarr = Set(arr)
    
    guard x.count >= 8 else {
        throw PasswordError.tooShort
    }
    guard !setarr.intersection(upper).isEmpty else {
        throw PasswordError.missingUppercase
    }
    guard !setarr.intersection(lower).isEmpty else {
        throw PasswordError.missingLowercase
    }
    guard !setarr.intersection(number).isEmpty else {
        throw PasswordError.missingNumber
    }
    guard !setarr.intersection(symbols).isEmpty else {
        throw PasswordError.missingSymbol
    }
}

// 예시:
do {
    try validatePassword("abcdAAAA2A!af")
} catch let error as PasswordError {
    switch error {
    case .tooShort:
        print("Password is too short")
    case .missingUppercase:
        print("Password is missing an uppercase letter")
    case .missingLowercase:
        print("Password is missing a lowercase letter")
    case .missingNumber:
        print("Password is missing a number")
    case .missingSymbol:
        print("Password is missing a symbol")
    }
}
// Password is too short
// Password is missing an uppercase letter
// Password is missing a symbol


//------------------------------------------------------------------------------

enum ATMError: Error {
    case negativeAmount
    case insufficientBalance
}
class ATM {
    var balance: Double = 0
    
    func deposit(amount: Double) -> Bool {
        if amount > 0 {
            self.balance += amount
            return true
        }else {
            return false
        }
    }
    func withdraw(amount: Double) throws -> Double {
        guard amount > 0 else {
            throw ATMError.negativeAmount
        }
        guard amount < self.balance else {
            throw ATMError.insufficientBalance
        }
        self.balance = self.balance - amount
        return self.balance
    }
}

// 예시:
let atm = ATM()
atm.deposit(amount: 1000)

print(atm.balance)              // 1000.0

do {
    let cash = try atm.withdraw(amount: 500)
    print(cash)                 // 500.0
} catch let error as ATMError {
    switch error {
    case .negativeAmount:
        print("Cannot withdraw a negative amount")
    case .insufficientBalance:
        print("Cannot withdraw more than balance")
    }
}

print(atm.balance)              // 500.0


//------------------------------------------------------------------------------


enum CalculatorError: Error {
    case divisionByZero
}

struct Calculator {
    var result: Double = 0
    mutating func add(_ number: Double) {
        result = result + number
    }
    mutating func subtract(_ number: Double) {
        result = result - number
    }
    mutating func multiply(_ number: Double) {
        result = result * number
    }
    mutating func divide(_ number: Double) throws {
        guard number != 0 else {
            throw CalculatorError.divisionByZero
        }
        result = result / number
    }
}

// 예시:
var calculator = Calculator()
calculator.add(10)
print(calculator.result)        // 10.0

calculator.subtract(3)
print(calculator.result)        // 7.0

calculator.multiply(2)
print(calculator.result)        // 14.0

do {
    try calculator.divide(7)
    print(calculator.result)    // 2.0
} catch CalculatorError.divisionByZero {
    print("Cannot divide by zero")
}

//------------------------------------------------------------------------------
enum LibraryError: Error {
    case bookNotFound, limitExceeded
}

class Library {
    private var books: [String]
    private var limit: Int
    
    init(books: [String], limit: Int = 3) {
        self.books = books
        self.limit = limit
    }
    
    func borrow(books: [String]) throws -> String {
        if books.count > limit {
            throw LibraryError.limitExceeded
        }
        if !self.books.contains(books) {
            throw LibraryError.bookNotFound
        }
        for book in books {
            self.books.remove(at: books.firstIndex(of: book)!)
        }
        return "\(books.joined(separator: ","))을 대출했습니다."
    }
    
    
}

let library = Library(books: ["Harry Potter", "The Little Prince", "The Hobbit"], limit: 3)
do {
        let result = try library.borrow(books: ["Harry Potter", "The Little Prince"])
        print(result)
} catch LibraryError.bookNotFound {
        print("책을 찾을 수 없습니다.")
} catch LibraryError.limitExceeded {
        print("대출 한도를 초과했습니다.")
}

//------------------------------------------------------------------------------

enum ParsingError: Error {
    case invalidJSON
}

struct JsonData: Decodable {
    let name: String
    let age: Int
    let hobbies: [String]
}

func parseJSON(_ jsonString: String) throws -> Dictionary<String, Any>{
    if let data = jsonString.data(using: .utf8) {
        if let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]{ return jsonObject }
    }
    return [:]
}


func parseJSON(_ jsonString: String) throws -> [String : Any] {
    do {
        let data = jsonString.data(using: .utf8)
        var dictionary: [String : Any] = [:]
        let json: JsonData = try JSONDecoder().decode(JsonData.self, from: data!)
        dictionary["name"] = json.name
        dictionary["age"] = json.age
        dictionary["hobbies"] = json.hobbies
        return dictionary
    } catch {
        throw ParsingError.invalidJSON
    }
}

let jsonString = """
{
    "name": "John",
    "age": 25,

}
"""
//    "hobbies": ["reading", "coding", "gaming"]
do {
    let dictionary = try parseJSON(jsonString)
    print(dictionary)
} catch ParsingError.invalidJSON {
    print("Invalid JSON format")
}
// ["name": "John", "age": 25, "hobbies": ["reading", "coding", "gaming"]]
