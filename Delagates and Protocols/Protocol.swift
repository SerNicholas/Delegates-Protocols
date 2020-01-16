//
//  Protocol.swift
//  Delagates and Protocols
//
//  Created by Nikola on 9/25/19.
//  Copyright © 2019 Nikola Krstevski. All rights reserved.
//

import UIKit

// Step 1: Create the protocol and create the method inside the protocol that takes data as parameter

protocol CanReceive {
    
    func dataReceived(data: String)
    
}
