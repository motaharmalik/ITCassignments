//
//  NextSceneViewController.swift
//  TableviewExercise
//
//  Created by motahar malik on 07/11/2022.
//

import UIKit

class NextSceneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func ClickMe(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       let welcomeVC  = segue.destination as? WelcomeViewController
        
        welcomeVC?.message = "Welcome"
        
        welcomeVC?.callBack = {message in
        }
            
        }
    }
    

