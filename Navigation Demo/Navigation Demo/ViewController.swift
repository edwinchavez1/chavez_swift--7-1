//
//  ViewController.swift
//  Navigation Demo
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var screenResult = "Let's Get Started"
    @IBOutlet weak var screen: UILabel!
    
    
    @IBAction func hiPressed(_ sender: Any) {
        screen.text = "Hello There!"
    }
    
    @IBAction func byePressed(_ sender: Any) {
        screen.text = "Good Bye!"
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        screen.text = screenResult
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        screen.text = screenResult
    }


}

