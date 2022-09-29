//
//  UIViewController + Storyboard.swift
//  iMusic
//
//  Created by Ariel Golan on 26.09.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    class func loadFromStoryboard<T:UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyBoard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyBoard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error: No initial view controller in \(name) storyBoard !")
        }
    }
}
