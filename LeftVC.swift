//
//  LeftVC.swift
//  Soundify
//
//  Created by MaahiHiten on 21/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit

class LeftVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableVw : UITableView?
    var menuOptions = [[String : String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuOptions = [["Title" : "Home"],
                       ["Title" : "My Playlist"],
                       ["Title" : "Search"],
                       ["Title" : "Profile"],
                       ["Title" : "Settings"],
                       ["Title" : "Home"]]
        
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
        
        let titleLabel : UILabel? = songCell?.contentView.viewWithTag(22222) as? UILabel
        titleLabel?.text = menuOptions[index]["Title"]
        
        if index%2 == 0 {
            songCell?.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        }
        else{
            songCell?.backgroundColor = UIColor.darkGray.withAlphaComponent(0.1)
        }
        
        return songCell!
    }
    
    // MARK: UITableViewDataSource UITableViewDelegate
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return self.tableVw!.frame.size.height/6
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        /*[_tableVw deselectRowAtIndexPath:indexPath animated:YES];
         
         [(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController
         hideLeftViewAnimated:YES completionHandler:nil];
         HomeVC *objHomeVC = [HomeVC instantiateWithStoryboard:SB_Home];
         PlaylistVC *objPlaylistVC = [PlaylistVC instantiateWithStoryboard:SB_Player];
         SongsSearchVC* objSongsSearchVC = [SongsSearchVC instantiateWithStoryboard:SB_Helpers];
         
         SettingsVC* objSettingsVC = [SettingsVC instantiateWithStoryboard:SB_Settings];
         ChartsVC* objChartsVC = [ChartsVC instantiateWithStoryboard:SB_Charts];
         
         switch (indexPath.row) {
         case 0:
         
         [(NavigationController *)[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController] setViewControllers:@[objHomeVC]];
         break;
         case 1:
         [(NavigationController *)[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController] setViewControllers:@[objPlaylistVC]];
         break;
         
         case 2:
         [(NavigationController *)[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController] setViewControllers:@[objSongsSearchVC]];
         break;
         case 3:
         [(NavigationController *)[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController] setViewControllers:@[objArtistsProfileVC]];
         break;
         case 4:
         [(NavigationController *)[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController] setViewControllers:@[objSettingsVC]];
         break;
         
         case 5:
         [(NavigationController *)[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController] setViewControllers:@[objChartsVC]];
         break;
         
         
         default:
         break;
         }
*/
    }
    
    public override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator){
        /*[(MainViewController *)[UIApplication sharedApplication].delegate.window.rootViewController
         hideLeftViewAnimated:YES completionHandler:nil];
         [_tableVw reloadData];
*/
    }
}
