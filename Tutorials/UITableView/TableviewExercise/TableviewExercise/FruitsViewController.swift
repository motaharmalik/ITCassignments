//
//  FruitsViewController.swift
//  TableviewExercise
//
//  Created by motahar malik on 01/11/2022.
//

import UIKit

class FruitsViewController: UIViewController {
    
    
   
    
    
    struct Employee {
        let fName: String
        let lName: String
        let jobTitle: String
        let favColour: String
        let emailID: String
    }
    
    let employees : [Employee] = [
        Employee(fName: "Emma", lName: "Ali", jobTitle: "Pharma", favColour: "White", emailID: "EmmaAli@gmail.com"),
        Employee(fName: "Motahar", lName: "Malik", jobTitle: "Engineer", favColour: "Blue", emailID: "motaharmalik@gmail.com"),
        Employee(fName: "Mahesh", lName: "jay", jobTitle: "software", favColour: "purple", emailID: "maheshJay@gmail.com"),
        Employee(fName: "max", lName: "white", jobTitle: "scientist", favColour: "black", emailID: "maxwhite@gmail.com"),
        Employee(fName: "alex", lName: "jones", jobTitle: "zooologist", favColour: "orange", emailID: "alexjones@gmail.com"),
        Employee(fName: "jordan", lName: "stevens", jobTitle: "teacher", favColour: "blue", emailID: "jordanstevens@gmail.com"),
        Employee(fName: "seymour", lName: "rod", jobTitle: "actor", favColour: "red", emailID: "seymour@gmail.com"),
        Employee(fName: "lina", lName: "blue", jobTitle: "doctor", favColour: "white", emailID: "lina@gmail.com"),
             ]


    
    
    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension FruitsViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.employees.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let employee = employees[indexPath.row]
        cell.textLabel?.text = "\(employee.fName) \(employee.lName), \(employee.emailID), \(employee.favColour), \(employee.jobTitle)"
        return cell
        
    }
    
}
/*extension FruitsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return fruitsList.count
    }
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "\(fruitsList[indexPath.row]) - \(indexPath.row)"
        return cell
    }

    
    
} */
