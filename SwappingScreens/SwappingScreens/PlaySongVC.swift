//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by stephen myers on 11/7/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLbl.text = selectedSong
        
    }

    
}
