//
//  AppCoordinator.swift
//  mvvm-coordinators-example
//
//  Created by Matias Glessi on 31/10/2020.
//

import Foundation

protocol Coordinator {
    
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}

class AppCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    func start() {
        let vc = MainViewController.instantiate(for: "Main")
        let viewModel = MainViewModel()
        vc.configure(viewModel: viewModel)
        
    }
    
}

