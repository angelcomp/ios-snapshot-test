//
//  UIViewController+Extension.swift
//  ios-snapshot-testTests
//
//  Created by Angelica dos Santos on 31/10/22.
//

import UIKit

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate(storyBoardName: String) -> Self {
        let storyBoard = UIStoryboard(name: storyBoardName, bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: "ViewController") as! Self
    }
}
