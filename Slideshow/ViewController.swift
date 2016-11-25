//
//  ViewController.swift
//  Slideshow
//
//  Created by Sobhan Eskandari on 11/25/16.
//  Copyright © 2016 Sobhan Eskandari. All rights reserved.
//

import UIKit
import ImageSlideshow

class ViewController: UIViewController {

    @IBOutlet var slideshow: ImageSlideshow!
    
    // Loading Images Locally
    let localSource = [ImageSource(imageString: "img1")!, ImageSource(imageString: "img2")!, ImageSource(imageString: "img3")!, ImageSource(imageString: "img4")!]

    //Loading Images From Network
     let alamofireSource = [AlamofireSource(urlString: "https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080")!, AlamofireSource(urlString: "https://images.unsplash.com/photo-1447746249824-4be4e1b76d66?w=1080")!, AlamofireSource(urlString: "https://images.unsplash.com/photo-1463595373836-6e0b0a8ee322?w=1080")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slideshow.backgroundColor = UIColor.white
        slideshow.slideshowInterval = 5.0
        slideshow.pageControlPosition = PageControlPosition.underScrollView
        slideshow.pageControl.currentPageIndicatorTintColor = UIColor.lightGray;
        slideshow.pageControl.pageIndicatorTintColor = UIColor.black;
        slideshow.contentScaleMode = UIViewContentMode.scaleAspectFill
        
        // try out other sources such as `afNetworkingSource`, `alamofireSource` or `sdWebImageSource` or `kingfisherSource`
        slideshow.setImageInputs(alamofireSource)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.didTap))
        slideshow.addGestureRecognizer(recognizer)
    }
    
    func didTap() {
        slideshow.presentFullScreenController(from: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

