/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("The book is called \(title). It's by \(author), it has \(pages) pages, and it costs $\(price)")
    }
}
var someBook = Book(title: "The Alchemist", author: "Tommy Hlinka", pages: 100, price: 10)
someBook.description()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func increment(){
        likes += 1
    }
    func printPost() {
        print("Message: \(message). \(likes) likes \(numberOfComments) comments.")
    }
}
var somePost = Post(message: "Hi, welcome to Chili's", likes: 68, numberOfComments: 420)
somePost.printPost()
somePost.increment()
somePost.printPost()
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
