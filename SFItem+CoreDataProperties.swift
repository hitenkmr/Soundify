//
//  SFItem+CoreDataProperties.swift
//  Soundify
//
//  Created by MaahiHiten on 18/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import Foundation
import CoreData


extension SFItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SFItem> {
        return NSFetchRequest<SFItem>(entityName: "SFItem");
    }

    @NSManaged public var isItemLiked: Bool
    @NSManaged public var itemLastPlayedDate: NSDate?
    @NSManaged public var itemPlayedCount: Int16
    @NSManaged public var itemPersistenceId: String?

}
