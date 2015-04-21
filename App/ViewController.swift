//
//  ViewController.swift
//  App
//
//  Created by Jeong YunWon on 2015. 4. 21..
//  Copyright (c) 2015년 youknowone.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    override func viewDidAppear(animated: Bool) {
        let g = UIActivityIndicatorView.globalActivityIndicatorView()
        //self.view.window!.addSubview(g)
        g.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

