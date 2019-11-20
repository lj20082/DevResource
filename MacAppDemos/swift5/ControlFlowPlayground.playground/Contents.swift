import Cocoa

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08
board[06] = +11
board[09] = +09
board[14] = -10
board[19] = -11
board[22] = -02
board[24] = -08
var square = 0
var diceRool = 0

gameLoop: while square != finalSquare {
    diceRool += 1
    if(diceRool == 7) {diceRool = 1}
    switch square + diceRool {
    case finalSquare:
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        continue gameLoop
    default:
        square += diceRool
        square += board[square]
    }
}
print("Game over")

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name" : "John"])
greet(person: ["name" : "Jane","location":"Cupertion"])

if #available(iOS 10, macOS 10.12, *) {
    print("available start macOS 10.12")
} else {
    print("unavailabel")
}

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
greet(person: "Dave")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown) "
}
print(greet(person: "Bill", from: "Dafo"))

func someFunction(_ firstName: Int, secondParamName: Int) {
    
}
someFunction(1, secondParamName: 2)

func someFunction2(parameterWithoutDafault: Int,parameterWithDefault: Int = 12) {
    
}
someFunction2(parameterWithoutDafault: 6)
someFunction2(parameterWithoutDafault: 12,parameterWithDefault: 3)

func artithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total/Double(numbers.count)
}
artithmeticMean(1,2,3,4,5)
artithmeticMean(3,8.25,18.25)

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

