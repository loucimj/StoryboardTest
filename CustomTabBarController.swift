//
//  CustomBarController.swift
//  StoryboardTest
//
//  Created by Rakesh Koplod on 17/06/15.
//  Copyright (c) 2015 Javier Loucim. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        let firstStoryBoard = UIStoryboard(name: "FirstTabItemStoryBoard", bundle: nil)
        let firstViewController: UIViewController = firstStoryBoard.instantiateInitialViewController() as! UIViewController
        let firstIcon = UITabBarItem(title: "First", image:nil, selectedImage:nil)
        firstViewController.tabBarItem = firstIcon
        
        let secondStoryBoard = UIStoryboard(name: "SecondTabItemStoryBoard", bundle: nil)
        let secondViewController: UIViewController = secondStoryBoard.instantiateInitialViewController() as! UIViewController
        let secondIcon = UITabBarItem(title: "Second", image:nil, selectedImage:nil)
        secondViewController.tabBarItem = secondIcon
        
        let thirdStoryBoard = UIStoryboard(name: "ThirdTabItemStoryBoard", bundle: nil)
        let thirdViewController: UIViewController = thirdStoryBoard.instantiateInitialViewController() as! UIViewController
        let thirdIcon = UITabBarItem(title: "Third", image:nil, selectedImage:nil)
        thirdViewController.tabBarItem = thirdIcon
        
        let controllers = [firstViewController,secondViewController,thirdViewController]
        self.viewControllers = controllers
        self.selectedIndex = 0
    }
    
    //Delegate methods
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        println("should select viewController: \(viewController.title) ?")
        return true;
    }
}
