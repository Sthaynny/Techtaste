//
//  MainCoordinator.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self
        navigationController.pushViewController(homeViewController, animated: true)
    }
    
    func showProductsList() {
        let productsListCoordinator = ProductsListCoordinator(navigationController: navigationController)
        childCoordinators.append(productsListCoordinator)
        productsListCoordinator.start()
    }
}
