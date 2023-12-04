//
//  AppInfo.swift
//
//
//  Created by Kevin Hermawan on 26/09/23.
//

import Foundation

/// A structure that provides convenient access to information about the current application.
///
/// This structure encapsulates functionality for retrieving various pieces of information about the application from its bundle. These include the app's name, version number, build number, and bundle identifier. Additionally, it offers a method to fetch custom values from the info dictionary.
public struct AppInfo {
    /// The main bundle of the application.
    ///
    /// This internal static property is set to the main bundle of the application. It is used within the `AppInfo` struct to access various properties from the bundle's info dictionary.
    internal static var bundle: Bundle = .main
    
    /// The name of the application.
    ///
    /// This computed property returns the application's name as specified in the `CFBundleName` key of the bundle's info dictionary. The return type is an optional string, reflecting that the bundle might not contain this key.
    public static var name: String? {
        bundle.infoDictionary?["CFBundleName"] as? String
    }
    
    /// The version number of the application.
    ///
    /// This computed property returns the version number of the application. The version number is defined in the `CFBundleShortVersionString` key of the bundle's info dictionary. It returns an optional string, as the info dictionary might not have this key.
    public static var version: String? {
        bundle.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    /// The build number of the application.
    ///
    /// This computed property retrieves the build number of the application from the `CFBundleVersion` key in the bundle's info dictionary. It returns an optional string since the key may not be present in the dictionary.
    public static var buildNumber: String? {
        bundle.infoDictionary?["CFBundleVersion"] as? String
    }
    
    /// The bundle identifier of the application.
    ///
    /// This computed property returns the bundle identifier of the application. It is an optional string, as there might be scenarios where the bundle identifier is not set.
    public static var bundleIdentifier: String? {
        bundle.bundleIdentifier
    }
    
    /// Retrieves a specific value from the application's info dictionary.
    ///
    /// This method allows for fetching custom values from the application's info dictionary using their respective keys. It's particularly useful for accessing custom metadata defined in the app's bundle.
    ///
    /// - Parameter key: A string representing the key for the desired value in the info dictionary.
    /// - Returns: An optional string containing the value associated with the specified key, or nil if the key does not exist.
    public static func value(for key: String) -> String? {
        bundle.infoDictionary?[key] as? String
    }
}
