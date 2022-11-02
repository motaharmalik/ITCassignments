import UIKit

let greetings = { (name: String, age: Int) in
    print("Hello \(name) how are you? I am \(age) years old ")
    
}
greetings("Johnathan", 24)


var drivingWithReturn = {(Name: String) -> String in
    return "I am driving with \(Name) in the car"
    
    
}


/*let message = drivingWithReturn("Lee")
print(message)


let driving = {
    print("I am driving")
}
*/


func travel(action: () -> Void){
    print("Im getting ready to go")
    action()
    print("I arrived")
    
}


travel{
    print("I am now driving")
}


// Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


//Using closures as parameters when they RETURN values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going NOW \(place) in my car"
}

// Shorthand parameter names

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// We can call travel() using something like this:

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
// However, Swift knows the parameter to that closure must be a string, so we can remove it:

travel { place -> String in
    return "I'm going to \(place) in my car"
}

// It also knows the closure must return a string, so we can remove that:
travel { place in
    return "I'm going to \(place) in my car"
}

// As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too:

travel { place in
    "I'm going to \(place) in my car"
}

///Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.

travel {
    "I'm going to \($0) in my car"
}

//Closures with multiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")
let result2 = travel()("London")

//Capturing values

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

// Closure capturing happens if we create values in travel() that get used inside the closure. For example, we might want to track how often the returned closure is called:

func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

/* Even though that counter variable was created inside travel(), it gets captured by the closure so it will still remain alive for that closure.
 
 So, if we call result("London") multiple times, the counter will go up and up:

*/

result("London")
result("London")
result("London")
    
