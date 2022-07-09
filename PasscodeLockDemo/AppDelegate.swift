//
//  AppDelegate.swift
//  PasscodeLockDemo
//
//  Created by Yanko Dimitrov on 8/29/15.
//  Copyright © 2015 Yanko Dimitrov. All rights reserved.
//

import UIKit
import PasscodeLock

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    lazy var passcodeLockPresenter: PasscodeLockPresenter = {
        
        var configuration = PasscodeLockConfiguration()
        configuration.isTouchIDAllowed = true
        let presenter = PasscodeLockPresenter(mainWindow: self.window, configuration: configuration)
        
        return presenter
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        passcodeLockPresenter.presentPasscodeLock()
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        passcodeLockPresenter.presentPasscodeLock()
    }
}
