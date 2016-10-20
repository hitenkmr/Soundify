//
//  AllSongsVC.swift
//  Soundify
//
//  Created by MaahiHiten on 19/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit
import MediaPlayer

struct Options{
    static let Play = "Play"
    static let AddToPlaylist = "Add to playlist"
    static let PlayNext = "Play Next"
    static let Cancel = "Cancel"
}

class AllSongsVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
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
        songCell?.selectionStyle = UITableViewCellSelectionStyle.none
        
        let index : Int = indexPath.row
        
        let rowNo : UILabel? = songCell?.contentView.viewWithTag(11111) as? UILabel
        rowNo?.text = "\(index + 1)"
        
        let allSFItems : [MPMediaItem] = sfCoreDataManager.allMediaItems()
        
        let titleLabel : UILabel? = songCell?.contentView.viewWithTag(22222) as? UILabel
        titleLabel?.text = allSFItems[index].value(forProperty: MPMediaItemPropertyTitle) as! String?
        
        let artistLabel : UILabel? = songCell?.contentView.viewWithTag(33333) as? UILabel
        artistLabel?.text = allSFItems[index].value(forProperty: MPMediaItemPropertyArtist) as! String?
        
        let optionsBtn = songCell?.contentView.viewWithTag(44444) as? UIButton
        optionsBtn?.indexPath = indexPath
        optionsBtn?.addTarget(self, action:#selector(optionBtnAction), for: UIControlEvents.touchUpInside)
        
        if index%2 == 0 {
            songCell?.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        }
        else{
            songCell?.backgroundColor = UIColor.darkGray.withAlphaComponent(0.1)
        }
        
        return songCell!
    }
    
    // MARK: UITableViewDelegate methods

//    public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?{
//        return nil
//    }
    
    //MARK : Helpers
    
    @IBAction func optionBtnAction(sender : UIButton?){
        
        let alertViewController = UIAlertController.init(title: "Select Option", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let playAction = UIAlertAction.init(title: Options.Play, style: UIAlertActionStyle.default) { (self) in
            sfCoreDataManager.addOrUpdateItemsInCoreData()
            sfAudiioController.playSongWithItem(item: (sfCoreDataManager.existingItemsInDatabase()?[(sender?.indexPath?.row)!])!)
        }
        let AddToPlaylistAction = UIAlertAction.init(title: Options.AddToPlaylist, style: UIAlertActionStyle.default) { (self) in
            /*PlaylistVC* objPlaylistVC = [PlaylistVC instantiateWithStoryboard:SB_Player];
             objPlaylistVC.isForAddingSongToPlaylist = YES;
             objPlaylistVC.itemToAddToPlaylist = itemToAdd;*/
        }
        let PlayNextAction = UIAlertAction.init(title: Options.PlayNext, style: UIAlertActionStyle.default) { (self) in
            
            /*  SFMediaAsset.shuffleModeOn = NO;
             
             SFMediaAsset.userSelectedNextItem = itemToAdd;
             SFMediaAsset.alreadyPlayedUserSelectedNextItem = NO;
             
             [SFAppDelegate showAlertOnColtroller:self WithTitle:nil message:@"Playing next..!!"];*/
        }
      
        let cancelAction = UIAlertAction.init(title: Options.Cancel, style: UIAlertActionStyle.cancel, handler: nil)
        
        alertViewController.addAction(playAction)
        alertViewController.addAction(AddToPlaylistAction)
        alertViewController.addAction(PlayNextAction)
        alertViewController.addAction(cancelAction)

        self.present(alertViewController, animated: true, completion: nil)
    }
   
    func playNextSong() {
        
    }
}
