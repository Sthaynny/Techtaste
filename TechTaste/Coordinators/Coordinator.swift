//
//  Coordinator.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    func start()
}
