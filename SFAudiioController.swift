//
//  SFAudiioController.swift
//  Soundify
//
//  Created by MaahiHiten on 19/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit
import MediaPlayer

class SFAudiioController: NSObject {
    
    static let sharedInstance = SFAudiioController()

    var sfAudioController : MPMusicPlayerController?
    
    func playSongWithItem(item : SFItem) {
        
        sfAudioController = MPMusicPlayerController.init()
        MPMusicPlayerController.applicationMusicPlayer()
        sfAudioController?.prepareToPlay()
        sfAudioController?.setQueue(with: MPMediaQuery.songs())
        
        sfAudioController?.nowPlayingItem = sfCoreDataManager.mediaItem(withPersistenceId: item.itemPersistenceId!)
        
        sfAudioController?.play()
    }
    
    
}
