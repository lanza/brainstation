// Week 2 of iOS Remote Monday Class

// Control Flow

// IF Statement

if true {
    print("Hello")
}

//if false {
//    print("This will never print")
//}

var a: Int = 3
if a > 2 && a != 1 {
    print("a is greater then 2 and does not equal 1")
}

if a > 3 {
    print("a is greater than 3")
}
else {
    print("a is less than or equal to 3")
}

var enteredUsername = ""
var enteredPassword = ""

var correctUserName = "myUserName"
var correctPassword = "myPassword"

if enteredUsername == correctUserName && enteredPassword == correctPassword {
    print("Logged in successfully!")
}
else if enteredUsername != correctUserName {
    print("Username is incorrect!")
}
else if  enteredPassword != correctPassword{
    print("Password is incorrect!")
    }
else {
    print("Incorrect credentials!")
}

//Switch Statement

var b = 0
switch b {
case -1...1:
    print("b is between -1 and 1")
case 0:
    print("b is 0")
default:
    print("b did not match any of the cases")
}


var names = ["Eric", "Joe", "bob"]

for name in names {
    print("Hello, \(name)!")
}

// Optionals

var nonOptionalString: String = "asdg"
var optionalString: String? = nil

// Optional Binding
// If Let Statement

let yearsMarried: Int? = nil
if let years = yearsMarried {
    print("Married for \(years) years.")
}
else {
    print("Not Married.")
}

// Functions

let width = 5.0
let length = 3.0
func areaOfRectangle(width: Double, length: Double) -> Double {
    return width * length
}
areaOfRectangle(width: width, length: length)



















