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
        let icon: String
    
        
    }
    
    let employees : [Employee] = [
        Employee(fName: "Emma", lName: "Ali", jobTitle: "Pharma", favColour: "White", emailID: "EmmaAli@gmail.com", icon: "Emma"),
        Employee(fName: "Motahar", lName: "Malik", jobTitle: "Engineer", favColour: "Blue", emailID: "motaharmalik@gmail.com", icon: "Tanjiro"),
        Employee(fName: "Mahesh", lName: "jay", jobTitle: "software", favColour: "purple", emailID: "maheshJay@gmail.com", icon: "Luffy"),
        Employee(fName: "max", lName: "white", jobTitle: "scientist", favColour: "black", emailID: "maxwhite@gmail.com", icon: "Zoro"),
        Employee(fName: "alex", lName: "jones", jobTitle: "zooologist", favColour: "orange", emailID: "alexjones@gmail.com", icon: "Killua"),
        Employee(fName: "jordan", lName: "stevens", jobTitle: "teacher", favColour: "blue", emailID: "jordanstevens@gmail.com", icon: "Gon"),
        Employee(fName: "seymour", lName: "rod", jobTitle: "actor", favColour: "red", emailID: "seymour@gmail.com", icon: "Kakashi"),
        Employee(fName: "lina", lName: "blue", jobTitle: "doctor", favColour: "white", emailID: "lina@gmail.com", icon: "Naruto"),
             ]


    
    
    @IBOutlet weak var tableView: UITableView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


    @IBAction func recent(_ sender: Any) {
    }
    @IBAction func favourites(_ sender: Any) {
        
        performSegue(withIdentifier: "Favourites", sender: nil)
    }
    @IBAction func nextScene(_ sender: Any) {
       let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let next = storyBoard.instantiateViewController(withIdentifier: "nextScene")
        
        self.present(next, animated: true)
        

    }
}










extension FruitsViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.employees.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DetailTableViewCell
        let employee = employees[indexPath.row]
        cell?.name?.text = "\(employee.fName) \(employee.lName)"
        cell?.message?.text = "\(employee.emailID), \(employee.favColour), \(employee.jobTitle)"
        cell?.settingTheImage.image = UIImage(named: employee.icon)
        return cell!
        
    }
    
}




extension FruitsViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "contactDetails", sender: nil)
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
