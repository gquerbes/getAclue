//
//  ViewController.swift
//  Get a Clue
//
//  Created by Gabriel Querbes on 8/21/16.
//  Copyright © 2016 Fourteen66. All rights reserved.
//

import UIKit
import GameKit
import CloudKit

class ViewController: UIViewController {
    var currentRecord : CKRecord?
    var localPlayer: Player?
    
    @IBOutlet var lblLabel: UILabel!
    
    @IBOutlet weak var txtInput: UITextField!
    
    @IBAction func btnRefreshLabel(_ sender: AnyObject) {
     //   readTheDatabase()
    }
   
    @IBAction func btnUpdate(_ sender: AnyObject) {
      //  writeToTheDatabase()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        authenticateLocalPlayer()
        populatePlayerInfo()
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        var destViewController : UserGameScreenViewController = segue.destination as! UserGameScreenViewController
        
        destViewController.localPlayer = localPlayer
       
    }

    func authenticateLocalPlayer(){
        var gameKitHelper = GameKitHelper()
        gameKitHelper.authenticatePlayer(sender: self)
    }
    
    
    
    func populatePlayerInfo(){
        localPlayer = Player()
        localPlayer?.setFirstName(name: GKLocalPlayer.localPlayer().displayName!)
        print(GKLocalPlayer.localPlayer().displayName)
    }
    
    
    func readTheDatabase(){
        let container = CKContainer.default()
        let publicDatabase = container.publicCloudDatabase
        let predicate = NSPredicate(format: "variable1 = %@", "onething")
        let query = CKQuery(recordType: "GameData", predicate: predicate)
        
        
        
        publicDatabase.perform(query, inZoneWith: nil) { (results, error) -> Void in
            if error != nil {
                print(error)
                
            }
            else {
                let record = results?[0] as CKRecord!
                self.currentRecord = record
                var value = (record?.object(forKey: "variable2"))!
                
                DispatchQueue.main.async {
                    self.lblLabel.text = String(value)
                    print(value)
                }
                
                
                
            }
            
        }
        
    }
    
    func writeToTheDatabase(){
        let container = CKContainer.default()
        let publicDatabase = container.publicCloudDatabase
        
        if let record = currentRecord{
            record.setObject(txtInput.text, forKey: "variable2")

            
            publicDatabase.save(record, completionHandler:
                ({returnRecord, error in
                    if let err = error {
                        DispatchQueue.main.async() {
                            print("Update Error \(err.localizedDescription)")
                        }
                    } else {
                        DispatchQueue.main.async() {
                            print("Success Record updated successfully")
                        }
                    }
                }))
        } else {
            print("No Record Selected, Use Query to select a record to update")
        }
        
        }
    }



