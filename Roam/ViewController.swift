//
//  ViewController.swift
//  Roam
//
//  Created by Richard Kim on 11/1/14.
//  Copyright (c) 2014 Richard Kim. All rights reserved.
//

import UIKit
import Parse



class ViewController: UIViewController {
    
    var myScrollView : CardScrollView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        myScrollView = CardScrollView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        var card1:Card = Card()
        var card2:Card = Card()
        myScrollView?.addCards([card1, card2])
        self.setupClipView()
        self.view.addSubview(myScrollView!)
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupClipView() {
        var clipView = ClipView(frame: self.view.frame)
        clipView.scrollView = myScrollView
        self.view.addSubview(clipView)
    }


}

