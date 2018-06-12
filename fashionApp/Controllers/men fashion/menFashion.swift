//
//  menFashion.swift
//  fashionApp
//
//  Created by iMATCH on 6/12/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class menFashion: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var tshirt = ["t1", "t2", "t3", "t4"]
    var shoes = ["s1", "s2", "s3", "s4"]
    var jeans = ["j1", "j2", "j3", "j4"]
    
    
    @IBOutlet weak var tshirtCollectionView: UICollectionView!
    @IBOutlet weak var shoesCollectionView: UICollectionView!
    @IBOutlet weak var jeansCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tshirtCollectionView.delegate = self
        tshirtCollectionView.dataSource = self
        
        shoesCollectionView.delegate = self
        shoesCollectionView.dataSource = self
        
        jeansCollectionView.delegate = self
        jeansCollectionView.dataSource = self
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tshirt.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.tshirtCollectionView {
            let cell:TshirtViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "tshirtCell", for: indexPath) as! TshirtViewCell
            
            cell.tshirtPic.image = UIImage(named: tshirt[indexPath.row] )
            //cell.tshirtName.text = tshirt[indexPath.row] as? String
            //cell.tshirtPrice.text = tshirt[indexPath.row] as? String
            
            
            return cell
            
        }else{
            let cell:ShoesViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "shoesCell", for: indexPath) as! ShoesViewCell
            
            
            
            return cell
        }
    }

  

}
