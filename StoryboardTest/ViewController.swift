//
//  ViewController.swift
//  StoryboardTest
//
//  Created by Javi on 29/5/15.
//  Copyright (c) 2015 Javier Loucim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func launchNewStoryBoardClicked(sender: AnyObject) {
        
        let secondSTB = UIStoryboard(name: "ThirdTabItemStoryBoard", bundle: nil)
        let initialVCFromSecondSTB: AnyObject = secondSTB.instantiateInitialViewController()
        self.presentViewController(initialVCFromSecondSTB as! UIViewController, animated: true, completion: nil)
    }
}

