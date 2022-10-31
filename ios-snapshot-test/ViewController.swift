//
//  ViewController.swift
//  ios-snapshot-test
//
//  Created by Angelica dos Santos on 31/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    var isDarkMode = false {
        didSet {
            view.backgroundColor = isDarkMode ? .black : .white
            helloLabel.textColor = isDarkMode ? .white : .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

