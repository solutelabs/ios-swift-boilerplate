//
//  AppDelegate.swift
//  scaffold
//
//  Created by stl-037 on 03/03/21.
//

import UIKit
import Firebase
import OneSignal
import Branch
import Stripe

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupFirebase()
        setupOnSignal(launchOptions: launchOptions)
        setupBranch(launchOptions: launchOptions)
        setupStripeAccount()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication,
                     didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running,
        // this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func setupFirebase() {
        FirebaseApp.configure()
    }
    
    func setupOnSignal(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        // Remove this method to stop OneSignal Debugging
        OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
        
        // OneSignal initialization
        OneSignal.initWithLaunchOptions(launchOptions)
        OneSignal.setAppId("YOUR_ONESIGNAL_APP_ID")

        /* promptForPushNotifications will show the native
        iOS notification permission prompt.
        We recommend removing the following code and
        instead using an In-App Message to prompt for notification permission (See step 8)
        */
        OneSignal.promptForPushNotifications(userResponse: { accepted in
             print("User accepted notifications: \(accepted)")
        })
    }
    
    func setupBranch(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        // This version of initSession includes the source UIScene in the callback
        
        BranchScene.shared().initSession(launchOptions: launchOptions,
                                         registerDeepLinkHandler: { (params, error, scene) in
                                           
        })
    }
    
    func setupStripeAccount() {
        //To Do: Change the Key After creating the account
        StripeAPI.defaultPublishableKey = "pk_test_51JCJdSEblY5a5Tac71HhReL829000AtN0JzF5QD0hlUctvuLWDT5eGC0qmjoPWsY7ceVmyrOQ8pYqqZojgTL0lAn008S7Sslxe"
    }
}
