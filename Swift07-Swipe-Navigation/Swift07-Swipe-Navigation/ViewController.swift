//
//  ViewController.swift
//  Swift07-Swipe-Navigation
//
//  Created by shinwood on 6/8/16.
//  Copyright © 2016 guox.in. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle: nil)
        let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
        let vc3 = ViewController3(nibName: "ViewController3", bundle: nil)
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width
        vc2.view.frame = frame2
        
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 2
        vc3.view.frame = frame3
        
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height - 22)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

