//
//  ViewController.swift
//  Focus
//
//  Created by Avi Perera on 3/6/18.
//  Copyright © 2018 Avishka Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    var isSideMenuHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //initialize side panel with -175
        sideMenuConstraint.constant = -175
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sideBarBtnPresses(_ sender: UIBarButtonItem) {
        
        if (isSideMenuHidden)
        {
            sideMenuConstraint.constant = 0
            
            //Add animation to the side panel
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        else
        {
            sideMenuConstraint.constant = -175
            //Add animation to the side panel
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        isSideMenuHidden = !isSideMenuHidden
    }
    
}

