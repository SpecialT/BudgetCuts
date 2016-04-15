//
//  BudgetScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class BudgetScene: SuperScene {
    
    override func initUI() {
        // code code code
        
        self.addCategory("funky", maxExp: 200)
    }
    
    func addCategory(name: String, maxExp: CGFloat) {
        let dict: [String : AnyObject] = [
            "name": name,
            "maxExp": maxExp
        ]
        
        NSNotificationCenter.defaultCenter().postNotificationName(NOTIFICATION_ADD_CATEGORY, object: self, userInfo: dict)
    }
}
