//
//  ViewController.swift
//  coldCall
//
//  Created by Isaac Suntag on 12/4/17.
//  Copyright © 2017 Isaac Suntag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    let names = [
        "Jay",
        "Bryant",
        "Jimmy",
        "Cody",
        "Ryota",
        "Courtney"
    ]
    var nameNum = 0
    @IBAction func coldCallButtonClicked(_ sender: UIButton) {
        updateUI()
    }
    
    func updateUI() {
        let oldNameNum = nameNum
        repeat {
            nameNum = Int(arc4random_uniform(UInt32(names.count)))
        } while nameNum == oldNameNum
        nameLabel.text = names[nameNum]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

