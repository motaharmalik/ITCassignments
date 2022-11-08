//
//  WelcomeViewController.swift
//  TableviewExercise
//
//  Created by motahar malik on 07/11/2022.
//

import UIKit

class WelcomeViewController: UIViewController {

   
    var message: String = ""
    
    var callBack:( (String) -> Void)? 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SendButton(_ sender: Any) {
        callBack?("Sending back ")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
