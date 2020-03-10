//
//  ViewController.swift
//  imagevier
//
//  Created by kibeom park on 2020/03/09.
//  Copyright © 2020 kibeom park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var maxImage = 6
    var numImage = 1
    
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPrevImage(_ sender: UIButton) {
        numImage -= 1
        
        if numImage < 1 {
            numImage = maxImage
        }
        
        if numImage > maxImage {
            numImage = 1
        }
        
        
        let imageName = String(numImage) + ".png"
        mainImage.image = UIImage(named: imageName)
        lblName.text = imageName
    }
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage += 1
        
        if numImage < 1 {
            numImage = maxImage
        }
        
        if numImage > maxImage {
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        mainImage.image = UIImage(named: imageName)
        lblName.text = imageName
        
    }
    
}

