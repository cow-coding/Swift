//
//  ViewController.swift
//  HelloWorld
//
//  Created by kibeom park on 2020/05/02.
//  Copyright © 2020 kibeom park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func updateLabel(_ sender: Any) {
        label.text = "Hello, iOS"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

