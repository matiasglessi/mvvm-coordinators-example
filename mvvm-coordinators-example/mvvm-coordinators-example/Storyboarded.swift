//
//  Storyboarded.swift
//  mvvm-coordinators-example
//
//  Created by Matias Glessi on 31/10/2020.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate(for sbName: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate(for sbName: String) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: sbName, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
