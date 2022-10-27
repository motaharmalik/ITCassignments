// 1.create a struct Laptop and add 3 properties and 2 methods . Use protocols to create 2 methods rules.
struct Laptop : ComputingDevice {
    var ram: Int
    var processor: String
    var state = "awake"
    
    func specs() -> String {
        return "ram: \(ram), processor: \(processor), state: \(state)"
    }
    
    func compute() -> String {
        return state == "awake" ? "Computing" : "Laptop must be awake in order to compute"
    }
    
}

protocol ComputingDevice {
    func specs() -> String
    func compute() -> String
}


// 2.Create protocol for a football game and give default behaviour using extensions (add atleast 4 mehtods) and satisfy with class.
protocol fbGame {
    func begin()
    func end()
    func printGameInfo()
    func printScore()
}

extension fbGame {
    func begin() {
        print("The game has begun.")
    }
    func end() {
        print("The game has ended.")
    }
    func printGameInfo() {
        print("The teams, location and date are currently unknown.")
    }
    func printScore() {
        print("0-0")
    }
}


//3. What is the output of the below code
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
print(s1.p.name) //p2
print(s2.p.name) //p2

//4. Diff b/w struct and classes
//A struct is a value type. A class is a reference type.
//5. What is a protocol
//A contract of functions that must be implemented
//6. What is a class extension
// An extendion of members of a class
//7. What is a protocol extension
//An extension of functions of a protocol
// 8. Why are structs faster than classes
//Because classes are stored in the heap and structs are stored in the stack
// 9. When should you use a struct, and when should you use a class
//When you need to pass by reference, use a class. Otherwise, use a struct
