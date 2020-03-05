//
//  ViewController.swift
//  Counter
//
//  Created by Yutaka Kubota on 2020/02/28.
//  Copyright © 2020 Manabelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedButton(_ sender: Any) {
        changeCount(value: 1)
        countLabel.text = String(count)
    }
    
    @IBAction func tappedMinusButton(_ sender: Any) {
        changeCount(value: -1)
        countLabel.text = String(count)
    }
    
    func incrementCount() {
        count = count + 1
    }
    
    func decrementCount() {
        count = count - 1
    }
    
    func changeCount(value:Int) {
        count = count + value
    }
}

