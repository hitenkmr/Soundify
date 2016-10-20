//
//  AllSongsVCViewController.swift
//  Soundify
//
//  Created by MaahiHiten on 19/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit
import MediaPlayer

class AllSongsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   @IBOutlet var allSongsTableView : UITableView?
   @IBOutlet var backBtn : UIButton?

    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: UITableViewDataSource methods
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return sfCoreDataManager.allMediaItems().count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let songCell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "SongsCell", for: indexPath)
        
        let index : Int = indexPath.row
        
        let rowNo : UILabel? = songCell?.contentView.viewWithTag(11111) as? UILabel
        rowNo?.text = "\(index + 1)"
        
        let allSFItems : [MPMediaItem] = sfCoreDataManager.allMediaItems()
        
        let titleLabel : UILabel? = songCell?.contentView.viewWithTag(22222) as? UILabel
        titleLabel?.text = allSFItems[index].value(forProperty: MPMediaItemPropertyTitle) as! String?
        
        let artistLabel : UILabel? = songCell?.contentView.viewWithTag(33333) as? UILabel
        artistLabel?.text = allSFItems[index].value(forProperty: MPMediaItemPropertyArtist) as! String?
        
        if index%2 == 0 {
            songCell?.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        }
        else{
            songCell?.backgroundColor = UIColor.darkGray.withAlphaComponent(0.1)
        }
      
        return songCell!
        
    }
    
    
}
