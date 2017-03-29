//
//  ViewController.swift
//  OnBoarding
//
//  Created by stephen myers on 12/2/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//

import UIKit
import PaperOnboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

    @IBOutlet weak var onboardingView: OnboardingView!
    @IBOutlet weak var getStartedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        onboardingView.delegate = self
    
    }

    func onboardingItemsCount() -> Int {
        //number of screens 
        return 10
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        //this is how the entire onboarding screen is put together
        let backgroundColorOne = UIColor(red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
      //  let backgroundColorThree = UIColor(red: 250/255, green: 200/255, blue: 0/255, alpha: 1)
        
        //explicitly unwrapped should consider checking if font is available first if using imported fonts. If not available have a backup font. check iosfonts.com for fonts.
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        return[("christina_1", "A love Story!", "There was a beautiful woman who had curly hair, stunning eyes and was so sweet.", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
               
               ("Steve_2", "Shortly After...", "A dashing guy came into the picture, he loved God and wanted to be friends with the beautiful woman since she loved God too!", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
               
               ("Us_picture", "Eventually", "They realized they liked each other and started a relationship with the end goal of...", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
            
                ("ring-1", "Marriage", "But While they were excited to move toward this goal they didnt expect what came next.", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("Stormy_Days", "Stormy Days", "Over the next two years their relationship would  have many ups and downs, arguments and tough times. They lost family and almost lost family, many changes were made.", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("Steve_3", "He Struggled", "He tried to maintain an optimistic outlook but sometimes life got the best of him. Many times he acted like a child.", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("Side_Face", "She was still sweet", "She was still loving and patient even through those difficult times. Which led them to...", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("Christina_3_Striaght", "Today", "That Godly, Beautiful Woman is you Christina! I am forever grateful for your kindness and love toward me. But most importantly...", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("Jesus", "Because of Jesus Christ", "We are still together today and we have a great opportunity to still move towards marriage and true love even through difficulty.", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("Us_picture", "I love You", "Happy Anniversary Christina!", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont)][index]
        
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 8 {
            
            if self.getStartedButton.alpha == 1 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getStartedButton.alpha = 0
                })
            }
            
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        //if reach the last page in index
        
        if index == 9 {
            UIView.animate(withDuration: 0.4, animations: {
                self.getStartedButton.alpha = 1
            })
        }
    }
    
    @IBAction func gotStarted(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(true, forKey: "onboardingComplete")
        
        userDefaults.synchronize()
    }
    


}

