//
//  ViewController.swift
//  TableviewExercise
//
//  Created by motahar malik on 01/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var fruitsList:[String] = ["Apple", "Banana", "Mango", "Papaya", "Grapes", "pear"]
    
    @IBOutlet weak var `class`: UITableView!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return fruitsList.count
    }
    
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = fruitsList[indexPath.row]
        return cell
    }
    
    
}
