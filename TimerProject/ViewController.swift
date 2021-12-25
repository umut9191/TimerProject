//
//  ViewController.swift
//  TimerProject
//
//  Created by Mac on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        //very seconds without blocking thread calling specified function to do something
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc(){
        myLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == -1 {
            timer.invalidate()
            myLabel.text = "Time is over"
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        //instead of this we should use multi threading for not blocking main thread
//        counter = 10
//
//        for item in 1...10 {
//            counter -= 1
//            myLabel.text = "Time: \(counter)"
//            // this is blocking the interaction
//            Thread.sleep(forTimeInterval: 1)
//        }
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button cliced")
    }
    
}

