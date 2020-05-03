//
//  ViewController.swift
//  multiPickerView
//
//  Created by kibeom park on 2020/03/17.
//  Copyright © 2020 kibeom park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 2
    let PICKER_VIEW_HEIGTH:CGFloat = 80
    var imageFileName = [ "1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
    var imageArray = [UIImage?] ()
    
    @IBOutlet var pickerimage0: UIPickerView!
    @IBOutlet var lblimageName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        lblimageName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGTH
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image:imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            lblimageName.text = imageFileName[row]
        } else if component == 1 {
            imageView.image = imageArray[row]
        }
    }
}

