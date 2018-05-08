
//: # Exercises
/*:
 #### Question 1
 Create a variable called `myName` with your name as a `String` as its value. Create a constant called `modernProgrammingLanguage` that has a `String` of your choice as its value, but this time include a type annotation.
 */
var myName = "Eric Lanza"
let modernProgrammingLanguage: String = "Swift"
/*:
 #### Question 2
 Create 5 variables, each containing a different value type. (i.e. the first one contains a `String`, the second a `Bool`, the third an `Int`, and so on). You can name them whatever you like.
 */
var myString: String = "Eric"
var myBool: Bool = false
var myInt: Int = 5
var myDouble: Double = 5.5
var myArray: [String] = ["Eric", "Lanza"]
var myDictionary: [ String : String ] = [ "firstName": "Eric"]
/*:
 #### Question 3
 Create a variable called `oneHundred` that contains the computed value `100` by using the addition (`+`) and multiplication (`*`) operators. i.e. the variable should be equal to `100` without writing "`var oneHundred = 100`".
 */
var onHundred: Int = 5 * 10 + 50
/*:
 #### Question 4
 Using your knowledge of operators, what is the remainder of dividing `1456` by `134`.
 */
var myRemainder: Int = 1456 % 134
/*: 
 #### Question 5
 Create 2 variables with `String` values. Then concatenate these two variables to produce a third, new variable.
 */
var stringOne: String = "Eric"
var stringTwo: String = "Lanza"
var stringThree: String = "\(stringOne) \(stringTwo)"
/*: 
 #### Question 6 
 Create a constant that contains the value of comparing whether `10` is greater than `7`.
 */
let greaterThen: Bool = 10 > 7
/*: 
 #### Question 7 
 Create a constant that contains the value of comparing whether `10` is equal to `10`.
 */
let equalTo: Bool = 10 == 10
/*: 
 #### Question 8
 Create two constants, one containing `1000` and the other containing `1000.0` and then create a third constant containing the value of comparing the first two. What error do you get? Why are you receiving this error?
 */
let oneInt:Int = 1000
let oneDouble: Double = 1000.0
//let compareValues = oneInt == oneDouble
//Binary operator '==' cannot be applied to operands of type 'Int' and 'Double'
// You can not compare different types

/*: 
 #### Question 9 
 Create two variables, one that uses a comparison operator to evaluate to `false`, the other using a comparison operator to evaluate to `true`.
 */
var isFalse = 2 == 3
var isTrue = 1000000 > 9
/*: 
 #### Question 10 
 Using the two variables we created in the previous question, create a third variable that contains the value of using the logical AND (`&&`) operator. Create a fourth value that uses the logical OR (`||`) operator.
 */
var andOperator = isFalse && isTrue
var orOperator = isFalse || isTrue

/*: 
 #### Question 11 
 Explain why you received those answers.
 */
//In andOperator, it is checking to see if both isFalse and isTrue are true statements.  It will only return true if BOTH statements are true
//In orOperator, it is checking to see if either isFalse and isTrue are true statments.  It will return true if either or both statements are true.
/*:
 ##### Question 12 
 Create a variable that contains an integer and type annotate it. On the next line, update the variable to contain a string. What error do you get? Why are you receiving this error?
 */
var typeAnnotatedInt: Int = 5
//typeAnnotatedInt = "Will not work"
//Cannot assign value of type 'String' to type 'Int'
// You can not convert string types to numerical types by just updating the variable
/*:
 #### Question 13
 Create an array that holds the numbers 1 through 9, and then append 10 to the end.
 */
var arrayOfNumbers: [Int] = [1,2,3,4,5,6,7,8,9]
arrayOfNumbers.append(10)
var bigArray: [ Int] = Array(1...900)
/*: 
 #### Question 14 
 Create a dictionary that holds `String` keys and `Int` values. Add any key-value pair to this dictionary and use `print()` to display it.
 */
var dictionaryOfStringsByInts: [ String : Int ] = [ "NumberOne" : 1, "NumberTwo" : 2 ]
print(dictionaryOfStringsByInts)

