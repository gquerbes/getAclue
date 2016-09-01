//
//  GameScreenViewController.swift
//  Get a Clue
//
//  Created by Gabriel Querbes on 8/30/16.
//  Copyright © 2016 Fourteen66. All rights reserved.
//

import Foundation
import UIKit

class GameScreenViewController: UIViewController{
    
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var participantView: UIView!
    
    @IBAction func btnResize(_ sender: AnyObject) {
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func resize(){
    
            
//        print("-------shit printed-------")
//        
//        userView.frame = CGRect(x: 0, y: 20, width: userView.frame.width, height: userView.frame.height + 10.00)
//        
//        
//        
//        participantView.frame = CGRect(x: 0, y: userView.frame.maxY + 1, width: userView.frame.width, height: participantView.frame.height - 10.00)
//        
//        print("********shit printed********")
        
    
    }
    
//    displayContentController: (UIViewController*) content {
//    [self addChildViewController:content];
//    content.view.frame = [self frameForContentController];
//    [self.view addSubview:self.currentClientView];
//    [content didMoveToParentViewController:self];
//    }
}
