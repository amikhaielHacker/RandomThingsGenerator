//
//  ViewController.swift
//  RandomThingsGenerator
//
//  Created by adi on 05.12.16.
//  Copyright © 2016 AmikhaielHacker. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedSwitcher: UISegmentedControl!
    @IBOutlet weak var GenRand: UIButton!
    @IBOutlet weak var Result: UILabel!
    let sentences = ["I like music", "I hate music", "Shit", "Jesus is great", "The creator of this program is cool :)", "Why am I wasting my time?", "Should I buy a new computer?", "I like Apple", "I like Samsung", "I like HTC", "Hello","How are you", "I am fine", "Are you OK?", "You are cool... But not like me :)", "I'd like to beat someone", "Switch statement or if-else statement?"]

    override func viewDidLoad() {
        super.viewDidLoad()
        Result.alpha = 0
        
    }

    @IBAction func genRand(_ sender: AnyObject) {
        let random = arc4random_uniform(2000)
        Result.alpha = 1
        Result.text = "\(random)"
        switch segmentedSwitcher.selectedSegmentIndex {
        case 1:
            Result.adjustsFontSizeToFitWidth = true
            let random = sentences.randomItem()
            Result.text = "\(random)"
        default:
            break
        }
        
    }
    @IBAction func switcherAction(_ sender: AnyObject) {
        switch segmentedSwitcher.selectedSegmentIndex {
        case 0:
            GenRand.setTitle("Generate A Random Number", for: .normal)
        case 1:
            GenRand.setTitle("Generate A Random Sentence", for: .normal)
        default:
            break
        }
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
extension Array {
    func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}















