//
//  fristViewController.swift
//  fashionApp
//
//  Created by iMATCH on 6/10/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class fristViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    //MARK:- THIS FUNCTIONS FOR HIDE NIVGATIONS BAR
    //***************************************************************************
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
 
 
}
