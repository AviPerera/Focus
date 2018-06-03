//
//  AddStudyTaksViewController.swift
//  Focus
//
//  Created by Avi Perera on 3/6/18.
//  Copyright © 2018 Avishka Perera. All rights reserved.
//

import UIKit

class AddStudyTaksViewController: UIViewController {

    @IBOutlet weak var studyPlanTaskName: UITextView!
    @IBOutlet weak var saveBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Listen to keyboard notifications
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(with:)), name: .UIkeyboardWillShow, object: nil)
    }

//    @objc func keyboardWillShow(with notification: Notification){
//
//
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        
        if (studyPlanTaskName.text != nil) && studyPlanTaskName.text != ""
        {
            studyPlan?.append(studyPlanTaskName.text!)
            studyPlanTaskName.text = ""
           
        }
        

        
    }
    
    @IBAction func cancelBtnPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
