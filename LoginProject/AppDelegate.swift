//
//  AppDelegate.swift
//  LoginProject
//
//  Created by admin on 25/03/22.
//

import UIKit
import AppCenter
import AppCenterDistribute
@main
class AppDelegate: UIResponder, UIApplicationDelegate, DistributeDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Distribute.delegate = self;
        Distribute.checkForUpdate()
        AppCenter.start(withAppSecret: "b5d40189-c675-491c-8d15-77bb1a046ef5", services: [Distribute.self])
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


}

