//
//  GameKitHelper.swift
//  Get a Clue
//
//  Created by Gabriel Querbes on 8/31/16.
//  Copyright © 2016 Fourteen66. All rights reserved.
//

import Foundation
import GameKit

class GameKitHelper{
    
    init() {
    }
    
    var localPlayer : GKLocalPlayer?
    var authViewController: UIViewController?
    
    func authenticatePlayer(sender: AnyObject){
        localPlayer = GKLocalPlayer.localPlayer()
        localPlayer?.authenticateHandler = {(viewController, error)-> Void in
            
            if (viewController != nil){
                self.authViewController = viewController
                sender.present(viewController!, animated: true, completion: nil)
            }
            else{
                print(GKLocalPlayer.localPlayer().isAuthenticated)
                
            }
        }
    }
    
}
