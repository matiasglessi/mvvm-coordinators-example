//
//  MainViewController.swift
//  mvvm-coordinators-example
//
//  Created by Matias Glessi on 31/10/2020.
//

import UIKit


class MainViewModel {
    
}

class MainViewController: UIViewController, Storyboarded {

    private var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configure(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }


}

