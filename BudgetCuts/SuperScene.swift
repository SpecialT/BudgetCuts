//
//  SuperScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class SuperScene: SKScene {
    
    var headerNode: SKSpriteNode!
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = SKColor.whiteColor()
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        let statusBarHeight: CGFloat = 20 / self.view!.frame.size.height * self.size.height
        
        let statusBarBG = SKShapeNode(rectOfSize: CGSize(width: self.size.width, height: statusBarHeight))
        statusBarBG.position = CGPoint(x: 0, y: self.size.height / 2 - statusBarHeight / 2)
        statusBarBG.zPosition = Z_STATUS_BAR
        statusBarBG.fillColor = SKColor.blueColor()
        statusBarBG.strokeColor = SKColor.blueColor()
        addChild(statusBarBG)
        
        headerNode = SKSpriteNode(color: SKColor.redColor(), size: CGSize(width: self.size.width, height: 120))
        headerNode.position = CGPoint(x: 0, y: self.size.height / 2 - headerNode.size.height / 2)
        headerNode.zPosition = Z_HEADER
        self.addChild(headerNode)
        
        self.initUI()
    }
    
    func initUI() {
        print("Must override initUI")
    }
}
