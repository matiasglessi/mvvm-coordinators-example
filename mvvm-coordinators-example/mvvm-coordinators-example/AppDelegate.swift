//
//  AppDelegate.swift
//  mvvm-coordinators-example
//
//  Created by Matias Glessi on 31/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private let navController = UINavigationController()
    var coordinator: AppCoordinator?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    private func initializeApp() {
        navController.isNavigationBarHidden = true
        initializeCoordinator(with: navController)
        initializeWindow(with: navController)
    }

    private func initializeCoordinator(with navController: UINavigationController) {
        coordinator = AppCoordinator(navigationController: navController)
        coordinator?.start()
    }

    private func initializeWindow(with navController: UINavigationController) {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }


}

