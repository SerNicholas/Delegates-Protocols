//
//  SecondViewController.swift
//  Delagates and Protocols
//
//  Created by Nikola on 9/25/19.
//  Copyright © 2019 Nikola Krstevski. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    var data = ""
    var delegate: CanReceive? // Step 4: create a new property inside the View Controller that will do the delagating( i.e. the one that is going to send the data which in this case is SecondViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data
        
    }
    
    @IBAction func sendDataBack(_ sender: UIButton) {
        
        delegate?.dataReceived(data: textField.text!) // Step 5: When the user presses the button we want that data is send to the firstVC. So we are triggering the method dataReceived and inside the braces we are passing in the data(text) which we are sending to the firstVC
        dismiss(animated: true, completion: nil)
    }
    
}
