//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
         let deliCounter = DeliCounter()
        
        let stringForDeliLine = deliCounter.stringForDeliLine(["Al", "Chris", "Zach"])
        print(stringForDeliLine)
        
        let addName = deliCounter.addName("Madina", toDeliLine: ["Al", "Chris", "Zach"])
        print(addName)
        
        let serveNextCustomerInDeliLine = deliCounter.serveNextCustomerInDeliLine(["Al", "Chris", "Zach", "Madina"])
        print(serveNextCustomerInDeliLine)
        return true
    }
}

