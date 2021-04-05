//
//  AppDelegate.swift
//  SwiftCoordinatorPattern-Example
//
//  Created by Jesse on 2021/4/4.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        
        appCoordinator = AppCoordinator(window: window!)
        appCoordinator?.start()
        return true
    }

    // MARK: UISceneSession Lifecycle

}

