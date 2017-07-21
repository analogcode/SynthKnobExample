//
//  ViewController.swift
//  SynthUISpike
//
//  Created by Matthew Fecher on 7/20/17.
//  Copyright © 2017 Matthew Fecher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myKnob: KnobView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mySlider(_ sender: UISlider) {
        //myKnob.knobScale = CGFloat(sender.value) + 0.8
        myKnob.value = Double(sender.value)
    }

}

