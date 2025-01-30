//
//  ProductsListCoordinator.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import UIKit

class ProductsListCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let productsListViewController = ProductsListViewController()
        productsListViewController.coordinator = self
        navigationController.pushViewController(productsListViewController, animated: true)
    }
    
    func showProductDetails(for product: Product) {
        let productDetailsCoordinator = ProductDetailsCoordinator(navigationController: navigationController, product: product)
        childCoordinators.append(productDetailsCoordinator)
        productDetailsCoordinator.start()
    }
}
