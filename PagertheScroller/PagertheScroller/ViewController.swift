//
//  ViewController.swift
//  PagertheScroller
//
//  Created by stephen myers on 11/3/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Note: frame data is not available in veiw did load for scroll view
        
        
        
        var contentWidth : CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        //Loop, creates an imageview with its name and then adds it to the array
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            //created a reference of the things that will be added on to screen
            
            images.append(imageView)
            
            
            
            
            
            var newX: CGFloat = 0.0
            
            //full size of scroll view times the current iteration
            newX = scrollWidth / 2  + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            //setting frame on image after it has been added to the scroll view, accounting for coordinate system and height and width of the image
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
            
        }
        
        
        //show whats next
        scrollView.clipsToBounds = false
        
        //Scroll Views need to know the content size
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

    
}

