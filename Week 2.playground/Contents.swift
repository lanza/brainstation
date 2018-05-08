//: # Week 2 Exercises

/*:
 #### Question 1
 Imagine you are creating a database that can hold usernames, passwords, addresses, and phone numbers. The username and password fields are required while the address and phone number fields may be blank. What types in Swift would you use to represent these fields? Why?
 */
/*
 Username, Password: String
 Address: String?
 Phonenumber: String? or Int?
 */
/*:
 #### Question 2
 Create the variables described in Exercise 1 and use type annotation to explicitly define their types.
 */
let username: String
let password: String
let phonenumber: String?
let address: String?
/*:
 #### Question 3
 Given the following `String?` (optional string) variable, use an `if let` statement along with string interpolation to print a greeting when a value is present.
 */
var name: String? = "John"
if let q3name = name {
    print("Hello, \(q3name)")
}
else {
    print("There is no name")
}

/*:
 #### Question 4
 Write an `else` condition on your `if let` statement from Exercise 3 which prints "No one's here" when the variable `name` has no value. Experiment between giving `name` a `String` value and a `nil` value.
*/
//See above
/*:
 #### Question 5
 Using arithmetic operators, create a function (`func`) to change any given temperature from Fahrenheit to Celsius.
 */

//function template:
func convertTemperatureToCelsius(fahrenheitTemp: Double) -> Double {
    //add correct code here
    let celsius = (fahrenheitTemp - 32) * (5.0 / 9.0)
    return celsius
}
/*:
 #### Question 6
 Use the function you just wrote, along with string interpolation, to print a temperature conversion in a human-readable form, e.g. print "32.0F is equal to 0.0C".
 */
print("32.0F is equal to \(convertTemperatureToCelsius(fahrenheitTemp: 32))C.")
/*:
 #### Question 7
 Create an array of 3 songs where each song is represented by a dictionary. The dictionary should contain the following keys: `"title"`, `"artist"` and `"album"`.
 */
var arrayOfSongs: [[String:String]] = [["title": "Fortune Faded", "artist": "Red Hot Chili Peppers", "album": "Live in Hyde Park"],
                                       ["title": "The District Sleeps Alone Tonight", "artist": "The Postal Service", "album": "Give Up"],
                                       ["title": "The Mother We Share", "artist": "CHVRCHES", "album": "The Bones Of What You Believe"]]



/*:
 #### Question 8
 Create an array of numbers from `1` to `20`, and then create a loop which prints out whether a given number is a odd or even.
 */
let arrayOfInt = Array(1...20)
for i in arrayOfInt {
    if (i % 2) == 0{
        print("\(i) is even")
    }
    else {
        print("\(i) is odd")
    }
}
/*:
 #### Question 9
 Create a basic enumeration (`enum`) whose cases represent the different types of chess pieces.
 */
enum ChessPiece: String {
   case king, queen, rook, pawn, bishop, knight
}
/*:
 #### Question 10
 Modify the enumeration you just wrote so that each enumeration case is given an implicitly defined `String` `rawValue`.
 */
// See Above
/*:
 #### Question 11
 Create an array of chess pieces and use a `for-in` loop to print the type of each chess piece in the array. Note: String interpolation can be used to print enumeration cases.
 */
let arraryOfChessPieces: [ChessPiece] = [.king, .queen, .rook, .pawn, .bishop, .knight]
for i in arraryOfChessPieces {
    print("\(i)")
}
