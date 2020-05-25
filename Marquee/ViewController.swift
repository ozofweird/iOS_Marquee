//
//  ViewController.swift
//  Marquee
//
//  Created by Ahn on 2020/05/25.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit
import MarqueeLabel

class ViewController: UIViewController {

    @IBOutlet weak var marqueeLabel: MarqueeLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.marqueeLabel.type = .continuous
        self.marqueeLabel.speed = .duration(15)
        self.marqueeLabel.animationCurve = .easeInOut
        self.marqueeLabel.fadeLength = 10.0
        self.marqueeLabel.leadingBuffer = 30.0
        
        let strings = ["MarqueeLabel Test. This code is from MarqueeLabelDemoPushController.swift."]
        
        self.marqueeLabel.text = strings[Int(arc4random_uniform(UInt32(strings.count)))]
    }


}

