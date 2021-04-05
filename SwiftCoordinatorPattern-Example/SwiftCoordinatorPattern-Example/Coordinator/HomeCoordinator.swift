//
//  HomeCoordnator.swift
//  SwiftCoordinatorPattern-Example
//
//  Created by Jesse on 2021/4/4.
//  Copyright © 2021 Jesse. All rights reserved.
//

import UIKit

class HomeCoordinator: TabBarContainerCoordinator {
    var rootViewController: UIViewController! {
        return makeRootVC()
    }
    
    func start() {
        
    }
    
    private func makeRootVC() -> UIViewController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        homeVC.onRequestHomeDetail = { sender, detailId in
            let vc = HomeDetailVC()
            vc.detailId = detailId
            vc.closeAction = { sender in
                sender.navigationController?.popViewController(animated: true)
            }
            sender.show(vc, sender: nil)
        }
        return homeVC
    }
}
