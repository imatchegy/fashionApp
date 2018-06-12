//
//  home.swift
//  fashionApp
//
//  Created by iMATCH on 6/11/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class home: UIViewController, UIScrollViewDelegate {
    
    
    //change the status bar color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    //slider code is here
    var images: [String] = ["image1", "image2", "image3"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //slider code is here
        pageControl.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width
                * CGFloat(index)
            
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imgView)
            
        }
        
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        
        scrollView.delegate = self
        
    }
    
    
    
    //slider code is here
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pagenumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pagenumber)
        
    }
    
    }


