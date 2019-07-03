//
//  SecondViewController.swift
//  Double App
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var clock = 210
    var isRunning = false
    var timer = Timer()
    
    
    
    
    @objc func runTimer() {
        if clock > 0 {
            clock -= 1
            timerScreen.text = String(clock)
        } else {
            timer.invalidate()
            isRunning = false
        }
    }
    
    
    @IBOutlet weak var timerScreen: UILabel!
    
    @IBAction func pausePressed(_ sender: Any) {
        if isRunning {
            timer.invalidate()
            isRunning = false
        }
    }
    @IBAction func playPressed(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondViewController.runTimer), userInfo: nil, repeats: true)
            isRunning = true
        }
    }
    @IBAction func sub10Pressed(_ sender: Any) {
        if clock >= 10 {
            clock -= 10
            timerScreen.text = String(clock)
        }
    }
    @IBAction func resetPressed(_ sender: Any) {
        clock = 210
        timerScreen.text = String(clock)
    }
    @IBAction func add10Pressed(_ sender: Any) {
        
        clock += 10
        timerScreen.text = String(clock)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timerScreen.text = String(clock)
    }


}

