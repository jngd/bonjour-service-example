//
//  AppDelegate.swift
//  bonjour-service-example
//
//  Created by jngd on 26/07/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import UIKit
import XCGLogger

let log = XCGLogger.defaultInstance()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		log.setup(.Debug, showThreadName: true, showLogLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: nil, fileLogLevel: nil)
		
		log.debug("")
		
		return true
	}

	func applicationWillResignActive(application: UIApplication) {
		log.debug("")
	}

	func applicationDidEnterBackground(application: UIApplication) {
		log.debug("")
	}

	func applicationWillEnterForeground(application: UIApplication) {
		log.debug("")
	}

	func applicationDidBecomeActive(application: UIApplication) {
		log.debug("")
	}

	func applicationWillTerminate(application: UIApplication) {
		log.debug("")
	}
	
}

// :]
