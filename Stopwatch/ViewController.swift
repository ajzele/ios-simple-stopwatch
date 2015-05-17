//
//  ViewController.swift
//  Stopwatch
//
//  Created by Branko Ajzele on 17/05/15.
//  Copyright (c) 2015 Foggyline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var counter = 0
    
    @IBOutlet weak var time: UILabel!
    
    
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        counter = 0
        time.text = "\(counter)"
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
    }
    
    func updateTime() {
        counter++
        time.text = "\(counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

