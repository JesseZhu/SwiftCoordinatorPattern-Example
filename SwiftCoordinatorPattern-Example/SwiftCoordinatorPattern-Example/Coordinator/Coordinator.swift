//
//  Coordinator.swift
//  SwiftCoordinatorPattern-Example
//
//  Created by Jesse on 2021/4/4.
//

import UIKit

protocol Coordinator {
    func start()
}


protocol TabBarContainerCoordinator: Coordinator {
    var rootViewController: UIViewController! { get }
}
