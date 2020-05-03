//
//  ViewController.swift
//  alarm
//
//  Created by kibeom park on 2020/03/10.
//  Copyright © 2020 kibeom park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let TimeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    let count = 0
    var alarmTime: String?
    
    
    @IBOutlet var lblCurrenTime: UILabel!
    @IBOutlet var lblSelectTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: TimeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func PickerSelect(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblSelectTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() { // 현재시간 함수
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrenTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if alarmTime == currentTime {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    
}

