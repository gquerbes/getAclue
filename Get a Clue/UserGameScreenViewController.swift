//
//  UserGameScreenViewController.swift
//  Get a Clue
//
//  Created by Gabriel Querbes on 8/30/16.
//  Copyright © 2016 Fourteen66. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class UserGameScreenViewController: UIViewController{
    var localPlayer : Player?
    
  
    @IBOutlet weak var lblUsername: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.layer.borderColor = UIColor.darkGray.cgColor
        self.view.layer.borderWidth = 2
        
        lblUsername.text = localPlayer?.firstName
        print(GKLocalPlayer.localPlayer().displayName)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
