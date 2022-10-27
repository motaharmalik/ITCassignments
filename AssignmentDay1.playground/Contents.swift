import UIKit

//(Mandatory to completed today)
// 1. Install xcode
// 2. Create and share git Ids
// 3. Swift basic exercise questions
// 4. create a class Named Human and add 3 mandatory attributes and 2 optioanl attributes and 2 actions(functon)
// 5. Create 3 object of Human class created on #4
// 6. Create a function which takes firstname , middleName , lastName  as function parameter (middle name is optional) , return fullname from function.

// 7. What is type safety example

// 8. what is type inference, example
// 9 . how to create optional variable. exmaple

// 10 . how to handle optional variables
// 11 . diff b/w if let , guard let and nil coalsing.



// Due Date : 27/10/22, before sesson starts



// Exercise 4 and 5
class Human {
    var name: String
    var height: Int
    var gender: String
    var job: String
    var exercise: Bool
    
    init (initName: String, initHeight: Int, initGender: String, initJob: String, initExcercise: Bool){
        self.name = initName
        self.height = initHeight
        self.gender = initGender
        self.job = initJob
        self.exercise = initExcercise
    }
    func run(){
        print("The human is now running!")
        
    }
    
    func hit(){
        print("The human has hit")
    }
    
    func fullName(firstName: String, middleName: String = "", lastName: String ){
        print("Hello my name is " + firstName + " " + middleName + " " + lastName)
        
    }
    
}
let h1 = Human(initName: "Mike", initHeight: 180, initGender: "Male", initJob: "software engineer", initExcercise: true)

let h2 = Human(initName: "Gon", initHeight: 179, initGender: "Male", initJob: "Coach", initExcercise: true)

let h3 = Human(initName: "Francess", initHeight: 160, initGender: "Female", initJob: "Teacher", initExcercise: true)
print("this is", h1.name, "And his height is" ,h1.height)

// 7. What is type safety example
// 8. what is type inference, example

/* Swift is a type safe language, this means that every variable  has to have a specific type and a value that matches.
 Swift can also infer a variable type from its assigned value making declarations very concise  */

// an example of type inference example is:
var height = 120
// this is indirectly assigned a data type and now height is only an Int.
var sports: String
sports = "football"

//Here we have a data type that is assigned to "sports" and it will not change. If I were to say
// var sports = 1 this would come back with an error as it is only a String

//Another example
var streetName, gardenName, firstName: String

streetName = "fern Street"
gardenName = "quackmire"
firstName = "Leon"
// this is all type safety.


// 9 . how to create optional variable. exmaple

/* To creat an optional variable, you add a ? at the end of the sentence in which you are assigning the value
 
 an example is shown below*/

var favouriteClass: String?


// 10 . how to handle optional variables
/* When handling optionals, and you want to use nil, we use optionals to use it to represent either a value or nothing. you add a ? after declare what type it is and then equal it to "nil" ... Below are some examples*/

var a: Int? = nil
var b: String?    = nil




 

