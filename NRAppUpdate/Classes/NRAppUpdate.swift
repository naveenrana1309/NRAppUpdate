//
//  NRAppUpdate.swift
//  NRAppUpdate
//
//  Created by Naveen Rana on 21/02/18.
//

import Foundation

import Foundation
import UIKit


///NRAppUpdate enables the app to detect whether the new version of the app is available on itunes. For ex: During the launch of the app, it checks for update and shows the update prompt accordingly.


open class NRAppUpdate {
    
    
    /// Check update: Using itunes look up api to check if there is update available.
    ///
    /// - Parameter appId: App store itunes app id.
    public class func checkUpdate(for appId: String) {
        let itunesUrlString =  "https://itunes.apple.com/jp/lookup/?id=\(appId)"
        let itunesUrl = URL(string: itunesUrlString)
        var request = URLRequest(url: itunesUrl!)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) {
            data, response, error in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                
                if let parseJSON = json {
                    
                    if let resultArray = parseJSON["results"] as? NSArray {
                        if resultArray.count > 0 {
                            if let result = resultArray.firstObject as? NSDictionary {
                                let version = result["version"] as! String
                                if let bundleVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                                    if version != bundleVersion {
                                        DispatchQueue.main.async {
                                            self.showUpdateAlert(version: version, appID: appId)
                                        }
                                    }
                                }
                                
                            }
                        }
                        
                    }
                    
                }
                
            } catch {
                print(error)
                
            }
        }
        
        task.resume()
    }
    
    class func logMessage(message: String, function: String = #function, file: String = #file, line: Int = #line, coloumn: Int = #column, dsoHandle: UnsafeRawPointer = #dsohandle) {
        #if DEBUG
            print("\(function):\n \(message):\n \(file): \n \(line): \n \(coloumn): \n \(dsoHandle): ")
        #endif
        
        
    }
    
    
    /// Show alert control to update the app
    ///
    /// - Parameters:
    ///   - version: new version of uddate
    ///   - appID: App store itunes app id
    class func showUpdateAlert(version: String, appID: String) {
        
        let itunesUrlString =  "https://itunes.apple.com/app/id\(appID)"
        let itunesUrl = URL(string: itunesUrlString)
        let alert = UIAlertController(title: "Update Available", message: "A new version of app is available. Please update to version now. \(version)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Update now", style: .default) { action in
            if UIApplication.shared.canOpenURL(itunesUrl!) {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(itunesUrl!, options: [:], completionHandler: nil)
                } else {
                    // Fallback on earlier versions
                }
            }
            
        })
        alert.addAction(UIAlertAction(title: "Not now", style: .default) { action in
            // perhaps use action.title here
        })
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        
    }
}
