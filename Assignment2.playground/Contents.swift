import UIKit

    // 27/10/22


// 1.create a struct Laptop and add 3 properties and 2 methods . Use protocols to create 2 methods rules.
protocol Sound{
    func play()
    func mute()
}


struct Laptop : Sound {
    func play() {
        print("Music is playing")
    }
    
    func mute() {
        print("your sound is muted")
    }
    
    var nameOfLaptop : String
    var releaseDate : Int
    var memory : Int
    
    func turnOn() -> String {
        return "your " + nameOfLaptop + " is turning on now"
        
    }
    
    func memoryStatus(){
        print( "you have",memory,"GB of memory in your laptop")
        
    }
    

}
var m1 = Laptop(nameOfLaptop: "Mac", releaseDate: 2020, memory: 160)
m1.memoryStatus()
m1.mute()


// 2.Create protocol for a football game and give default behaviour using extensions (add atleast 4 mehtods) and satisfy with class.
protocol FootballGame{
    func kick()
    func shoot()
    func run()
    func pass()
}

extension FootballGame{
    
    
    func kick() {
        print("press S to kick!")
    }
    
    func shoot() {
        print("Press O to shoot!")
    }
    
    func run() {
        print("Press R to run!")
    }
    
    func pass() {
        print("Press X to pass!")
    }
    
}

class football : FootballGame{
    var teamName : String = ""
    var teamColour : String = ""
    var homeOrAway : String = ""
    var numOfPlayers : Int = 0
    
    init (teamName: String, teamColour: String, homeOrAway: String, numOfPlayers: Int){
        self.teamName = teamName
        self.teamColour = teamColour
        self.homeOrAway = homeOrAway
        self.numOfPlayers = numOfPlayers
    }
    
    func kick() {
        print("the home team", teamName, "has started kickoff")
    }
    
    
}

var f1 = football(teamName: "Chelsea", teamColour: "Blue", homeOrAway: "Home", numOfPlayers: 11)
f1.kick()


// 3.what is output of below code

struct Student {
    var p: Person
}

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


var s1 = Student(p: Person(name: "p1"))

var s2 = s1

s1.p.name = "p2"
                 
print(s1.p.name)
print(s2.p.name)

/// the output of the code is... s1 and s2 is equal to p2



//4. diff b/w struct and classes
/* A struct does not require initiliazer whereas a class does. A struct, adds information to the heap and it stores the location alongside whereas the struct stroes variables in separate memory so they won't be mixed up the same*/


//5.  what is protocol
/* A protocol is a set of rules that must be followed*/



//6. what is class extension
/* A class extension is functions or methods that are added to the class, it is a way of adding functions without messing up the code. It is also a subclass of the parent class*/



//7.  what is protocol extension.
/* Protocols let you describe what methods something should have, but don’t provide the code inside. Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.
 
 Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.*/



// 8. why struct is faster than classes
/* The major difference between structs and classes is that they live in different places in memory. Structs live on the Stack(that's why structs are fast) and Classes live on Heap in RAM.*/



// 9. when you will use struct and when to use classes.
/* CONSIDER defining a struct instead of a class if instances of the type are small and commonly short-lived or are commonly embedded in other objects.
 AVOID defining a struct unless the type has all of the following characteristics:
 1.It logically represents a single value, similar to primitive types (int, double, etc.).
 2.It has an instance size under 16 bytes.
 3.It is immutable.
 4. It will not have to be boxed frequently.

 In all other cases, you should define your types as classes.*/




//due date : (Mandatory to completed 27/10/22)















