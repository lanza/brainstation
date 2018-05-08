// WEEK 1 Playground

// Variables
// A named container that can hold a value of a given type - its value can be reassigned
// --------------------------
var greeting = "Hello, playground"
greeting = "Hello"
//greeting = 5 <- Compile-time error - cannot assign an Int to a variable that was initialized with type String

var name = "Keith"
name = "Adam"


// Constants
// A named container that can hold a value of a given type - once it has been assigned a value, it cannot be changed
// --------------------------
let pi = 3.1415
//pi = 6 <- Compile-time error - cannot reassign a constant


// Comments
// --------------------------

// This is a single-line comment

/*
 This is a
 multiline
 comment
 */


// Types
// --------------------------

// Int: Integer
// Whole numbers
let anInt: Int = 5

// Float: Single-precision floating-point number
// Can have fractional values
let aFloat: Float = 5.0

// Double: Double-precision floating-point number
// This is the type that we will use in class to represent numbers that can have fractional values
// It is also the default type that the Swift compiler will infer if you do not explicitly type annotate your variables
let aDouble: Double = 5.0

// String: Text
// Used to store text of any length, including 0
let aString: String = "Hello"
let anEmptyString: String = ""

// Character
// Used to store a single character
// The Swift compiler will infer this as a String unless you explicitly type annotate your variable
let aCharacter: Character = "H"

// Bool: Boolean
// Used to store logical values: true or false
let aBool: Bool = true


// Conversion between number types
let doubleConvertedIntoAnInt: Int = Int(aDouble)
let intConvertedIntoADouble: Double = Double(anInt)


// String Interpolation: "\()"
// Used to create a String out of variables/constants/expressions, as well as other string literals
// --------------------------
let namedGreeting: String = "\(greeting) \(name) \(anInt)" // String interpolation tries to convert values to a String first
//let namedGreeting2: String = greeting + " " + name + anInt // < this is an error because we cannot add a String type to an Int type

// Print
// Prints strings to the console (bottom of the screen)
// --------------------------
print(namedGreeting) // Useful in Xcode projects


// Operators
// --------------------------

// Arithmetic Operators
// --------------------------
// These operators obey order of operations (BEDMAS)

1 + 1
2 - 2
9 / 3
5 * 2
10 % 3

// Operators can be combined to create more complex expressions
let aComplexExpression: Int = (1 + 1) * 1 + 5

// Exercise:
// Determine if a given number is even
let aNumberToDetermineIfEven: Int = 3
let remainder = (aNumberToDetermineIfEven % 2)
let isThisNumberEven: Bool = (remainder == 0) // a number is even if dividing by 2 leaves a remainder of 0


// Comparison Operators
// --------------------------
// These operators can compare two values of the same type,
// and output a Bool value stating whether the comparison was true or false
2 > 1
2 < 1
2 <= 1
2 >= 1
2 == 1
2 != 1

// The results of comparisons can be stored
let storedComparison: Bool = 1 == 1 // or (1 == 1) if it is more clear


// Logical Operators
// --------------------------

// NOT operator: !
// Turns true expressions into false ones, and vice versa
// Unary operator (operates on one value)
!true
!false
let isThisNumberOdd: Bool = !isThisNumberEven

// AND operator: &&
// It evaluates to true if and only if both operands are true
true && true // true
false && true // false
true && false // false
false && false // false

// OR operator: ||
// It evaluates to true as long as one or both operands are true
true || true // true
false || true // true
true || false // true
false || false // false

// Exercise:
// --------------------------
// We will go to the movies if we have money and a good movie is playing, but we'll also go if we have a free ticket
var hasMoney: Bool = false
var goodMovieIsPlaying: Bool = true
var hasFreeTicket: Bool = true
var amIGoingToTheMovies = (hasMoney && goodMovieIsPlaying) || hasFreeTicket


// Collection Types
// --------------------------

// Arrays
// --------------------------
// Ordered collection of values (a list)
// 0-indexed (counting starts at 0)

var names: [String] = [ "Adam", "Keith", "Samantha", "0" ]
names.count // 3
names.append("Noe") // adds an element onto the end the array // [ "Adam", "Keith", "Samantha", "Noe" ]
names.count // 4
names.remove(at: 0) // [ "Keith", "Samantha", "Noe" ]
names.count // 3
names[0] // get the 0th element in the names array // in this case, "Keith"
//names[4] <- runtime error - trying to access an element outside the array's bounds

//var arrayOfIntegers: [Int] = [ 0, 3, 5, "6" ] <- can only add integers - runtime error
var arrayOfIntegers: [Int] = [ 0, 3, 5 ]
//var arrayOfCompositeTypes: [Any] = [ 0, 3, 5, "6" ] <- Heterogeneous collection - Beware of 'Any' as it could be any type
var emptyArray: [Int] = [] // <- my personal preference due to readability when you are starting out
//var emptyArray2 = [Int]() // equivalent
//var emptyArray3 = Array<Int>() // equivalent

let greetingForNameInArray: String = "Hello \(names[1])" // String interpolation combined with array indexes


// Dictionary
// --------------------------
// Unordered collection of key-value pairs (a lookup table)
var person: [String: String] = [ // dictionary of key-value pairs where the keys are Strings and the values are Strings
    "name": "Kate",
    "address": "123 Fake St, Toronto",
    "country": "United States"
]
person["phoneNumber"] = "1234567890" // add the key-value pair "phoneNumber": "1234567890" to the dictionary
person["name"] // gets the value for the key "name"
let personsName = person["name"]
person["asdf"] // nil
person["address"] = nil // simple way to remove a key-value pair form a dictionary
person.count

var emptyDictionary: [String: String] = [:] // empty dictionary
//var emptyDictionary2 = [String: String]() // equivalent
//var emptyDictionary3 = Dictionary<String, String>() // equivalent


var arrayOfDictionaries: [[String: String]] = []
//var arrayOfDictionaries2 = [[String: String]]() // equivalent
//var arrayOfDictionaries3 = Array<Dictionary<String, String>>() // equivalent

var dictionaryWithArrayValues: [String: [String]] = [
"list1": ["listItem1", "listItem2", "listItem3"],
"list2": ["listItem1", "listItem2", "listItem3"],
"list3": ["listItem1", "listItem2", "listItem3"],
]

dictionaryWithArrayValues["list4"] = ["listItem1", "listItem2", "listItem3"] // add a 4th key-value pair




