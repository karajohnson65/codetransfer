/*:
 ## Exercise - Memberwise and Custom Initializers
 
 If you completed the exercise Structs, Instances, and Default Values, you created a `GPS` struct with default values for properties of `latitude` and `longitude`. Create your `GPS` struct again, but this time do not provide default values. Both properties should be of type `Double`.
 */
struct GPS{
    var latitude : Double
    var longitude : Double
}
/*:
 Now create a constant instance of `GPS` called `somePlace`, and use the memberwise initializer to set `latitude` to 51.514004, and `longitude` to 0.125226. Print the values of `somePlace`'s properties.
 */
let somePlace = GPS(latitude: 51.514004, longitude: 0.125226)
print(somePlace.latitude)
print(somePlace.longitude)

/*:
 In Structs, Instance, and Default Values, you also created a `Book` struct. Creat this struct again without default values. Give each property appropriate types. Declare your `favoriteBook` instance and pass in the values of your favorite book using the memberwise initializer. Print a statement about your favorite book using `favoriteBook`'s properties.
 */
struct Book {
    var title : String
    var pages: Int
}
let favoriteBook = Book(title: "Title", pages: 100)
print("My favorite book is \(favoriteBook.title). It has \(favoriteBook.pages) pages.\n")

/*:
 Make a `Height` struct with two variable properties, `heightInInches` and `heightInCentimeters`. Both should be of type `Double`.
 
 Create two custom initializers. One initializer will take a `Double` argument that represents height in inches. The other initializer will take a `Double` argument that represents height in centimeters. Each initializer should take the passed in value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other property by calculating the right value from the passed in value. Hint: *1 inch = 2.54 centimeters*.
 
 - Example: If you use the initializer for inches to pass in a height of 65, the initializer should set `heightInInches` to 65 and `heightInCentimeters` to 165.1.
 */
//Custom initalizer that takes a farenheit value as a parameter, performs the conversion, and assigns the new value to the celsius property
struct Temperature{
    var celsius: Double
    
    init(celsius: Double){
        self.celsius = celsius
    }
    
    init(fahrenheit: Double){
        celsius = (fahrenheit - 32)/1.8
    }
}

let currentCelcTemp = Temperature(celsius: 18.5)
let currentFahTemp = Temperature(fahrenheit: 65.3)

let boiling = Temperature(fahrenheit: 212.0)

print ("The current temperature is \(currentFahTemp) degrees farenheit.")
print("That's \(currentFahTemp.celsius) degrees celsius")
print("The boiling point if water is 212 degrees fahrenheit. This is \(boiling.celsius) degrees celsius")
/*:
 Now create a variable instance of `Height` called `someonesHeight`. Use the initializer for inches to set the height to 65. Print out the property for height in centimeters and verify that it is equal to 165.1.
 */

struct Height{
    var someonesHeight : Int = 65
    
}
/*:
 Now create a variable instance of `Height` called `myHeight` and initialize it with your own height. Verify that both `heightInInches` and `heightInCentimeters` are accurate.
 */


//: [Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Users and Distance](@next)
