//
//  AppInfo.swift
//
//
//  Created by Kevin Hermawan on 26/09/23.
//

import Foundation

public struct AppInfo {
    internal static var bundle: Bundle = .main
    
    public static var name: String? {
        bundle.infoDictionary?["CFBundleName"] as? String
    }
    
    public static var version: String? {
        bundle.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    public static var buildNumber: String? {
        bundle.infoDictionary?["CFBundleVersion"] as? String
    }
    
    public static var bundleIdentifier: String? {
        bundle.bundleIdentifier
    }
    
    public static func value(for key: String) -> String? {
        bundle.infoDictionary?[key] as? String
    }
}
