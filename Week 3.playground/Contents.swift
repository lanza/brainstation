
/*:
 #### Question 1
 Create a `class` called `Rectangle` that has an optional double (`Double?`) property called `length` and another optional double (`Double?`) property called `width`. Create an instance of this class and assign values to its `length` and `width` properties.
 */
class Rectangle {
    var length: Double?
    var width: Double?
    init(length: Double?, width: Double?){
        if let length1 = length {
            self.length = length1
        }
        if let width1 = width {
            self.width = width1
        }
    }
}
let rectangle1 = Rectangle(length: 10.9, width: 12.1)
rectangle1.length
rectangle1.width


/*:
 #### Question 2
 Try modifying your `Rectangle` class so its `length` property is a non-optional double (`Double`). What error do you get? Why does this happen?
 */
//???
/*:
 #### Question 3
 Create a copy of your `Rectangle` class and call it `Rectangle2`. Add a method (`func`) to your `Rectangle2` class that returns the rectangle's area if it's `length` and `width` properties are both set. The method should return `nil` otherwise. Create an instance of this class and use this new method to print the area of the `Rectangle2` instance. Hint: The area of a rectangle is its length multiplied by its width.
 */
class Rectangle2 {
    var length: Double?
    var width: Double?
    init(length: Double?, width: Double?){
        if let length1 = length {
            self.length = length1
        }
        if let width1 = width {
            self.width = width1
        }
    }
    
    func area() -> Double? {
        if let length = self.length, let width = self.width {
            return length * width
        }
        else {
            return nil
        }
    }
}
let rect2 = Rectangle2(length: nil, width: 7)
rect2.area()
/*:
 #### Question 4
 Create a `class` called `Creature` that has a string (`String`) property called `name` and an integer (`Int`) property called `age`. Create an instance of this class with your initializer. Then, print the values of your instance's properties.
 */
class Creature {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let reptile = Creature(name: "lizard", age: 24)

print("This creature is a \(reptile.name) and it is \(reptile.age) years old.")

/*: 
 #### Question 5
 Create a `class` called `Cheetah` that is a subclass of `Creature`. Give it an integer (`Int`) property to represent the number of spots it has and assign it a default value of `0`. Create a `Cheetah` instance using the initializer inherited from its superclass (`Creature`). Then, give your `Cheetah` instance any non-zero number of spots.
 */
class Cheetah: Creature {
    var numberOfSpots: Int = 0
    }

let cheetah1 = Cheetah(name: "Steve", age: 10)
cheetah1.numberOfSpots = 50

/*: 
 #### Question 6
 Create a `class` called `Person` that is a subclass of `Creature`. Give it a `String?` property called `occupation`. Create an initializer for the Person class that assigns values to all of the instance's properties (including inherited properties). Create an instance of this class with your new initializer. Hint: Your initializer will need to call the superclass' initializer at some point.
 */
class Person: Creature {
  var occupation: String?
    init(name: String, age: Int, occupation: String?) {
        super.init(name: name, age: age)
            self.occupation = occupation
        }
    }

let eric = Person(name: "Eric", age: 26, occupation: "Student")

/*:
[Closures]:
https://blp.brainstation.io/student-content/xdLT2
#### Question 7
 Construct a `ContactList` class that manages a list of people. Add a method for adding people to the list. Also add a method for printing the names of people in the list. Hint: Which collection type behaves like a list?
 
 For a more advanced problem, add a method for removing a person from the list. Hint: You'll need to use `Array`'s `index(where:)` method to find the person and then remove(at:) to actually perform the removal. You will also need to understand [Closures] to use `Array`'s `index(where:)` method. Hint: Use the person's `name` to evaluate equality in the closure.
*/
class ContactList {
    var list: [Person] = []
    
    func add(_ person: Person){
        self.list.append(person)
    }
    func printNames() {
        print(list)
    }
}


/*:
 #### Question 8
 Create an instance of your `ContactList` class. Add at least three people to the list using the method you defined. If you also added a method to remove people, try that out as well.
 */
let contactList = ContactList()
let person1 = Person(name: "Eric", age: 26, occupation: "Student")
let person2 = Person(name: "Bob", age: 26, occupation: "Student")
let person3 = Person(name: "Steve", age: 26, occupation: "Student")
contactList.add(person1)
