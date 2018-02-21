//
//  ViewController.swift
//  NRAppUpdate
//
//  Created by naveenrana1309 on 02/21/2018.
//  Copyright (c) 2018 naveenrana1309. All rights reserved.
//

import UIKit
import NRAppUpdate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NRAppUpdate.checkUpdate(for: "---YOUR APP ITUNES ID---")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

