
// Variables
var greeting = "Hello, playground"
greeting = "Hello"

//Constants
let name = "Eric"
//name = "Lanza"      *Name is a constant, not able to reassign a value  Compile time error
let pi = 3.14159


// Comments

/*
 
This is
a multiline
comment
 
 */


// Types

// Interger - > Int

let anInt = 5
let aFloat: Float = 5.0
let aDouble = 5.0
let aBool = true
let aString = "Name"
let aCharacter: Character = "Z"

//Convert between number types
let doubleConvertedIntoInt: Int = Int(aDouble)
let intConvertedIntoDouble: Double = Double(anInt)

//String Interpolation: \()
let namedGreeting: String = "\(greeting) \(name)"
let namedGreeting2: String = greeting + " " + name

//Print function
print("Hello World")
print(namedGreeting)

//Operators

//Arithmetic Operators

1 + 1    // Addition Operator
2 - 2    // Subtraction Operator
3 * 3    // Multipl;ication Operator
4 / 4    //  Division Operator
10 % 3   // Remainder Operator

// Comparison Operators

1 == 2   // Is Equal
1 != 2   // Is Not Equal
1 > 1    // Greater Than
1 < 2    // Less Than
1 >= 0   // Greater than or Equal to
1 <= 1   // Less Than or Equal to

let aNumberToDetermineIfEven: Int = 200
let isThisNumberEven: Bool = aNumberToDetermineIfEven % 2 == 0

// Logic Operators

// NOT operator: !
!true // Not True
!false // Not False

// AND Operator
// Results in true if and only if both sides of the operands are true
7 > 4 && 7 < 9 // AND Operator, both operands have to be true to return true
7 > 4 && 7 < 6  // 7 is not less than 6, so both sides are not true, results in false

// OR Operator
// Reults in true as long as one or both operands are true
7 > 4 || 7 > 6 // OR Operator, either operands have to be true to return true
7 < 4 || 7 > 6 // 7 Is greater then 6 so the statement is true
7 < 4 || 7 < 6 // 7 Is not less then 4 and 7 is not less then 6, both sides are false, so this is false

var haveMoney: Bool = true
var goodMoviePlaying: Bool = false
var hasFreeTicket: Bool = true
let amIGoingToTheMovies = (haveMoney && goodMoviePlaying) || hasFreeTicket

//if amIGoingToTheMovies == true {
//    print("I am going to the movies tonight!")
//}
//else {
//    print("I am not going to the movies tonight.")
//}

// Collection Types
// Array: Ordered collectiong of values (a list)

var names = ["Eric", "Gary", "Terrance"]
names.append("Noe")
print(names)
names.count
names.remove(at: 3)
print(names[0])

var arrayOfIntegers: [Int] = [2, 3, 6]
var arrayOfCompositeTypes: [Any] = [2, 3, "6", 7.0]

//Dictionary: Unordered collection of key-value pairs (a lookup table)

var person = [
    "name": "Kate",
    "address": "123 Main Street",
    "country": "old"
]
person["phoneNumber"] = "561-777-8899" // Add key value pair
person["name"] // Gets the value of the key pair
person["asdf"] // Returns nothing - nil
person["address"] = nil // Simple way to remove a key value pair

person.count // Counts the amount of key value pairs in the dictionary
let personsName = person["name"] // Optional string?
var emptyDictionary: [String:String] = [:]


var arrayOfDictionaries: [[String:String]] = []
//var arrayOfDictionaries2 = [[String:String]]()

var dictionaryWithArrayValues: [String: [String]] = [
    "list1": ["listItem1", "listItem2", "listItem3"],
    "list2": ["listItem1", "listItem2", "listItem3"],
    "list3": ["listItem1", "listItem2", "listItem3"],
]





