//
//  ViewController.swift
//  SynthUISpike
//
//  Created by Matthew Fecher on 7/20/17.
//  Copyright © 2017 Matthew Fecher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var knobOne: KnobView!
    @IBOutlet weak var knobTwo: KnobView!
    @IBOutlet weak var displayLabel: UILabel!
    
    enum ControlTag: Int {
        case control1 = 100
        case control2 = 101
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        knobOne.delegate = self
        knobTwo.delegate = self
    }

  
}


//*****************************************************************
// MARK: - 🎛 Knob Delegate
//*****************************************************************

extension ViewController: KnobDelegate {
    
    func updateKnobValue(_ value: Double, tag: Int) {
        
        switch (tag) {
            
        // VCOs
        case ControlTag.control1.rawValue:
            let intValue = Int(floor(value * 10))
            let message = "Knob One: \(intValue)"
            displayLabel.text = message
            
        case ControlTag.control2.rawValue:
            let message = "Knob Two: \(String(format: "%.02f", value))"
            displayLabel.text = message
            
              default:
            break
        }
    }
}
