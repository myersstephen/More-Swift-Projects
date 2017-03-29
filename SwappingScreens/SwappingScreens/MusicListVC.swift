//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by stephen myers on 11/4/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue


    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "Alpha & Omega"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            
            if let song = sender as? String {
                destination.selectedSong = song
            
            }
        
         }
    }

}
