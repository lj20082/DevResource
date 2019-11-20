import Cocoa

var str = "Hello, playground"
print("str has \(str.count) characters")
str.insert("!", at: str.endIndex)
str.remove(at: str.index(before: str.endIndex))
str.insert(contentsOf: " there", at: str.endIndex)
let range = str.index(str.endIndex, offsetBy: -6)..<str.endIndex
str.removeSubrange(range)
let greeting = "hello java"
let index = greeting.firstIndex(of: " ") ?? greeting.endIndex
let beginning = greeting[..<index]
let newString = String(beginning)

let quotation = "We're a lot alike, you and I"
let sameQuotation = "We're a lot alike, you and I"
if quotation == sameQuotation {
    print("These two strings are considered equal")
}
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print(act1SceneCount)
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("public place") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
let dogString = "Dog!"

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// Collection Types
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
someInts = []
var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
var shoppingList: [String] = ["Eggs","Milk"]
print("The shopping list contains \(shoppingList.count) items.")
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty")
}
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[4...6] = ["Bananas","Apples"]
shoppingList.insert("Maple Syrup", at: 0)
let maplySyrup = shoppingList.remove(at: 0)
maplySyrup
firstItem = shoppingList[0]
let apples = shoppingList.removeLast()
print(shoppingList)
for item in shoppingList {
    print(item)
}
for (index, value) in shoppingList.enumerated() {
    print("item \(index + 1): \(value)")
}
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items")
letters.insert("i")
letters = []
var favouriteGenres: Set<String> = ["Rock","Classical","Hip hop"]
print("I have \(favouriteGenres.count) favorite music genres")
if favouriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
}else {
    print("I have particular music preferences.")
}
favouriteGenres.insert("Jazz")
if let removedGenre = favouriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
}else {
    print("I never much cared for that.")
}
if favouriteGenres.contains("Jazz") {
    print("Contain Jazz")
} else {
    print("not contain Jazz")
}
print("-------------- sep line -------------")
for genre in favouriteGenres {
    print("\(genre)")
}
print("-------------- sep line -------------")
for genre in favouriteGenres.sorted() {
    print("\(genre)")
}
print("-------------- sep line -------------")
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]
oddDigits.union(evenDigits).sorted() // 并集
oddDigits.intersection(evenDigits) // 交集
oddDigits.subtracting(singleDigitPrimeNumbers).sorted() // 在前者中且不在后者中
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() // 在前者和后者中任一个，但不同时在
print("-------------- sep line -------------")
let firstSet: Set = [1,2,3,4,5]
let thirdSet: Set = [4,5]
let secondSet: Set = [6,7]
thirdSet.isSubset(of: firstSet)
firstSet.isSuperset(of: thirdSet)
firstSet.isDisjoint(with: secondSet) //2者没有相同对象

var nameOfIntegers = [Int: String]()
nameOfIntegers[16] = "sixteen"
nameOfIntegers = [:]
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("The airports dictionary contains \(airports.count) items.")
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
if let oldValue = airports.updateValue("Doulin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("The airport is not in the airports dictionary.")
}
airports["APL"] = "Apple International"
airports["APL"] = nil
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
for (airportCode, airPortName) in airports {
    print("\(airportCode): \(airPortName)")
}
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
print("-------------- Control Flow -------------")
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
let numberOflegs = ["spider": 8, "ant": 6, "cat": 4]
for (animationName, legCount) in numberOflegs {
    print("\(animationName)s have \(legCount) legs")
}
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
let minutes = 6
for tickMark in 0..<minutes {
    print(tickMark)
}
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {      //开区间
    print(tickMark)
}
for tickMark in stride(from: 0, through: minutes, by: minuteInterval) { //闭区间
    print(tickMark)
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2,3,5,7,11:
    description += " a prime number,and also"
    fallthrough
default:
    description += " an integer"
}
print(description)
