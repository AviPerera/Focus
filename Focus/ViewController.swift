//
//  ViewController.swift
//  Focus
//
//  Created by Avi Perera on 3/6/18.
//  Copyright © 2018 Avishka Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let studyPlanData = studyPlan{
                        return studyPlanData.count
                    }
                    else{
                        return 0
                    }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let studyPlanData = studyPlan{
            cell.textLabel?.text = studyPlanData[indexPath.row]
        }
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        studyPlanTableView.reloadData()
    }

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var studyPlanTableView: UITableView!
    
    var isSideMenuHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        studyPlanTableView.delegate = self
        studyPlanTableView.dataSource = self
        
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

