//
//  AppDelegate.swift
//  StartMovies
//
//  Created by yun guo on 2022/1/8.
//

import UIKit
import StarMovies

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let rootViewController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = rootViewController
        self.window = window
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

