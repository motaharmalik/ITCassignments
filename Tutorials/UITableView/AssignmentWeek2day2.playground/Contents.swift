import UIKit

// Due date :  02/10/22


// Assignment


// 1. Create two Class ViewControllerOne  and ViewControllerTwo  , viewControllerOne will have refreshUI function and viewController2 object , you need to call refresh function from viewController2

// hint : user protocol delegate to do this.


protocol ViewControllerAction {
    func refresh()
}

class ViewControllerOne : ViewControllerAction {
    func goToVcTwo(){
        let vcTwo = ViewControllerTwo(delegate: self)
    }
    
    
    func refresh() {
        print("This is the refresh button")
    }
    
}

class ViewControllerTwo {
    var delegate : ViewControllerAction
    
    init(delegate : ViewControllerAction){
        self.delegate = delegate
    }
    func callRefresh(){
        delegate.refresh()
    }
}













// 2.
//class Employee {
//    func submitTimeSheet() {
//       print("submitTimeSheet")
//    }
//
//    func approveTimeSheet() {
//       print("submitTimeSheet")
//    }
//}
//
//let e1 = Employee()
//let manager = Employee()

// In above code e1 should be able to  submitTimeSheet but should not allowed to approveTimeSheet but manager can do both submitTimeSheet and approveTimeSheet

protocol EmployeeOnly{
    func submitTimeSheet()
}

class Worker:EmployeeOnly{
    func submitTimeSheet() {
        print("Time sheet has been submitted")
    }
    
    func approveTimeSheet(){
        print("Time sheet has been approved.")
    }
}
let e1 : EmployeeOnly = Worker()
let manager = Worker()

manager.approveTimeSheet()
manager.submitTimeSheet()

e1.submitTimeSheet()
















// 3. Create a function named "Add" which takes two numbers and return sum using closure parameter

func add (n1: Int, n2: Int, addition: (Int, Int)-> Int) -> Int{
    return addition(n1, n2)
}

add(n1: 5, n2: 5) { n1, n2 in
    return n1 + n2
    
}


// 4. Create a tableView which displayes list of Employees , Employees is array of employee shown below, show atleast 10 employees

struct Emloyee {
    let fName: String
    let lName: String
    let jobTitle: String
    let favColor: String
    let emailId: String
}




// 5. you have two sorted arrays , merge these arrays in sorted order .

// input

let arr1 = [2,4,7,8,9]
let arr2 = [1,3,6,10]

// output sould be  = [1,2,3,4,6,7,8,9,10]

// don't use intenral sort or merge methods

var combine = arr1 + arr2
for i in 0..<combine.count{
    for j in 0..<combine.count{
        if combine[i] < combine[j]{
            var temp = combine[i]
            combine[i] = combine[j]
            combine[j] = temp
            
            
        }
    }
}
combine








// 6. what is use of protocol delegate pattenr
// 7. what is use of closure
// 8. closure is refrece type of value type
// 9. what is UITableViewDataSource
// 10. Mandator mehtods in UITableViewDataSource protocol.


