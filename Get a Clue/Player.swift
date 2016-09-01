//
//  Player.swift
//  Get a Clue
//
//  Created by Gabriel Querbes on 8/31/16.
//  Copyright © 2016 Fourteen66. All rights reserved.
//

import Foundation
import GameKit

class Player: GKPlayer{

    
    override init(){
        super.init()
        
    }
    
    // profile data
    var firstName: String? = nil
    let lastName: String? = nil
    var imageURL: URL? = nil
    var historicalThings: [Thing]?
    
    
    // session data
    var thing : Thing?
    var attempts: Int? = nil
    //players contacted during session
    var connections: [Player]?
    var guesses: [String]?
    
    
    func setFirstName(name: String){
        
        firstName = name
    }
    
}
