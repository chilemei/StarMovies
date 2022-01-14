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
        let viewModel = MovieDetailsViewModel(
            title: "title",
            posterImage: nil,
            overview: "overview"
        )
        let rootViewController = UINavigationController(rootViewController: MovieDetailsViewController(viewModel: viewModel))
        window.rootViewController = rootViewController
        self.window = window
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

