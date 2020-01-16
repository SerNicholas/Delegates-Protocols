//
//  ViewController.swift
//  Delagates and Protocols
//
//  Created by Nikola on 9/25/19.
//  Copyright © 2019 Nikola Krstevski. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {  // Step 2: Conform to the the protocol in the class that is going to be the Delegate

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self // Step 6: We are setting ourselves(i.e. the firstVC) as the delegate of the secondVC 
        }
    }
    
    func dataReceived(data: String) {  // Step 3: Implement the REQUIRED delegate method i.e. in line 38
        
        label.text = data // deal with that data once it get sent
        
    }
    
}

