
//Week 3: Intro to Object Oreieted Programming (OOP) & Classes

// Class : Blueprint for an object

//Class Definition
class Person {
    // properties and methods go here
    var name: String = "Adam"
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func eat(){
        print("\(self.name) is eating")
    }
    func printDescription() {
        print("Hello, my name is \(self.name). I am \(self.age) years old")
    }
}

// Create objects from that class definition

let person1: Person = Person(name: "Steven", age: 23)
person1.printDescription()
person1.age
person1.name


//class Square {
//    let sideLength: Double
//    init(sideLength: Double){
//        self.sideLength = sideLength
//    }
//    func area() -> Double {
//        return self.sideLength * self.sideLength
//    }
//    func perimeter() -> Double {
//       return self.sideLength * 4
//    }
//    func printDescription() {
//        print("The side length of the square is \(self.sideLength).  It has an area of \(self.area()), and a perimeter of \(self.perimeter())")
//    }
//}
//
//let square1: Square = Square(sideLength: 5)
//square1.printDescription()

class Rectangle {
    let length: Double
    let width: Double
    init(length: Double, width: Double){
        self.length = length
        self.width = width
    }
    func area() -> Double {
        return self.length * self.width
    }
    func perimeter() -> Double {
       return self.length * 2 + self.width * 2
    }
    func printDescription() {
        print("I am a rectangle with area: \(self.area()), and perimeter: \(self.perimeter())")
    }
}

let rect = Rectangle(length: 5, width: 6)

class Square: Rectangle {
    var roundedCorner: Bool
    init(sideLength: Double) {
        self.roundedCorner = false
        super.init(length: sideLength, width: sideLength)
//        self.length = sideLength
//        self.width = sideLength
    }
    override func printDescription() {
        print("I am a square with area: \(self.area()), and perimeter: \(self.perimeter())")
    }
}

let square = Square(sideLength: 4)

square.printDescription()



class Vehicle {
    var distanceTraveled: Double = 0.0
    var speed: Double
    let numberOfWheels: Int
    
    init(speed: Double, numberOfWheels: Int) {
        self.speed = speed
        self.numberOfWheels = numberOfWheels
    }
    
    func move() {
        self.distanceTraveled = self.distanceTraveled + self.speed
    }
}

let vehicle1 = Vehicle(speed: 5, numberOfWheels: 4)
vehicle1.distanceTraveled
vehicle1.move()
vehicle1.distanceTraveled

class Car: Vehicle {
    var isStarted: Bool = false
    
    init(speed: Double){
        super.init(speed: speed, numberOfWheels: 4)
    }
    
    override func move() {
        if self.isStarted {
            super.move()
        }
        else {
            print("The car isn't started")
        }
    }
    
    func start() {
        self.isStarted = true
    }
}

class Bike: Vehicle {
    init(){
        super.init(speed: 30, numberOfWheels: 2)
    }
}

let car = Car(speed: 120)
car.start()

let bike = Bike()
bike.speed















