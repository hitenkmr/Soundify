//
//  SFCoreDataManager.swift
//  Soundify
//
//  Created by MaahiHiten on 19/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit
import CoreData
import MediaPlayer

enum DatabaseErrors: Error {
    case itemNotExist
}

class SFCoreDataManager: NSObject {
    
    static let sharedInstance = SFCoreDataManager()

    func addOrUpdateItemsInCoreData() {
        
        //https://www.youtube.com/watch?v=-4wvf3QjHiM
        
        let allSongs = MPMediaQuery.songs().items
        
        for item in allSongs! {
            
            let existenceItems = self.existingItemsInDatabase()
            var existingItemsPersistenceIds : [String]? = Array.init()
            
            for (_, item) in (existenceItems?.enumerated())! {
                existingItemsPersistenceIds?.append(item.itemPersistenceId!)
            }
            
            if !(existingItemsPersistenceIds?.contains("\(item.persistentID)"))! {
                
                let recored  = NSEntityDescription.insertNewObject(forEntityName: "SFItem", into: sfCoreDataStack.managedObjectContext) as! SFItem
                
                recored.isItemLiked = false
                recored.itemPlayedCount = 0
                recored.itemLastPlayedDate = nil
                recored.itemPersistenceId = "\(item.persistentID)"
            }
        }
        sfCoreDataStack.saveContext()
    }
    
    func existingItemsInDatabase() ->  [SFItem]?{
        
        let fetchRequest = NSFetchRequest<SFItem>(entityName: "SFItem")
        
        do {
            let existingItems = try sfCoreDataStack.managedObjectContext.fetch(fetchRequest)
            return existingItems
            
        } catch{
            NSLog("error in fetching items..!")
        }
        
        return nil
    }
    
    func itemWithPersistenceId(itemPersistenceId : String) -> SFItem? {
        
        let existenceItems : [SFItem] = self.existingItemsInDatabase()!
        
        for (_, item) in (existenceItems.enumerated()) {
            if item.itemPersistenceId == itemPersistenceId{
                return item
            }
        }
        
        return nil
    }
    
    func updateLikedStateOfItem(withItemPersistenceId itemPersistenceId : String) {
        
        let existenceItems : [SFItem] = self.existingItemsInDatabase()!
        
        for (_, item) in (existenceItems.enumerated()) {
            if item.itemPersistenceId == itemPersistenceId{
                if item.isItemLiked{
                    item.isItemLiked = true
                }
                else{
                    item.isItemLiked = false
                }
            }
        }
        sfCoreDataStack.saveContext()
    }
    
    func updatePlayedCountOfItem(withItemPersistenceId itemPersistenceId : String) {
        
        let existenceItems : [SFItem] = self.existingItemsInDatabase()!
        
        for (_, item) in (existenceItems.enumerated()) {
            if item.itemPersistenceId == itemPersistenceId{
                
                item.itemPlayedCount += 1
            }
        }
        sfCoreDataStack.saveContext()
    }
    
    func updateItemLastPlayedDate(withItemPersistenceId itemPersistenceId : String) {
        
        let existenceItems : [SFItem] = self.existingItemsInDatabase()!
        
        for (_, item) in (existenceItems.enumerated()) {
            if item.itemPersistenceId == itemPersistenceId{
                
                item.itemLastPlayedDate = NSDate()
            }
        }
        sfCoreDataStack.saveContext()
    }
    
    // MARK: Media Items Query
    
    func allMediaItems() -> [MPMediaItem] {
        return MPMediaQuery.songs().items!
    }
    
    func mediaItem(withPersistenceId itemPersistenceId : String) -> MPMediaItem? {
        
        let allMediaItems : [MPMediaItem] = self.allMediaItems()

        for (_, mediaItem) in (allMediaItems.enumerated()) {
            if "\(mediaItem.persistentID)" == itemPersistenceId{
                return mediaItem
            }
        }
        
        return nil
    }
}
