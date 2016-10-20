//
//  ViewController.swift
//  Soundify
//
//  Created by MaahiHiten on 18/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sfCoreDataManager.addOrUpdateItemsInCoreData()
        sfAudiioController.playSongWithItem(item: (sfCoreDataManager.existingItemsInDatabase()?[1])!)
    }
    
}
