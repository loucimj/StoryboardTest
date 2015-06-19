//
//  CustomSegueClass.swift
//  StoryboardTest
//
//  Created by Rakesh Koplod on 17/06/15.
//  Copyright (c) 2015 Javier Loucim. All rights reserved.
//

import UIKit

class CustomSegueClass: UIStoryboardSegue {
    
    override func perform() {
        let secondSTB = UIStoryboard(name: "StoryBoardForFirstTabItem", bundle: nil)
        let initialVCFromSecondSTB: AnyObject = secondSTB.instantiateInitialViewController()
        let source = sourceViewController as! UIViewController
        source.presentViewController(initialVCFromSecondSTB as! UIViewController, animated: true, completion: nil)
    }
   
}
