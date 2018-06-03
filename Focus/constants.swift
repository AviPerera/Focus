//
//  constants.swift
//  Focus
//
//  Created by Avi Perera on 4/6/18.
//  Copyright © 2018 Avishka Perera. All rights reserved.
//

import Foundation

var studyPlan:[String]?

func saveData(studyPlan:[String])
{
    UserDefaults.standard.set(studyPlan, forKey: "studyPlan")
    
}

func fetchData() -> [String]?
{
    if let studyplanData = UserDefaults.standard.array(forKey: "studyPlan") as? [String]
    {
        return studyplanData
    }
    else
    {
        return nil
    }
}
