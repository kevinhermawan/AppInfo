import XCTest
@testable import AppInfo

final class AppInfoTests: XCTestCase {
    override func setUp() {
        super.setUp()
        
        AppInfo.bundle = MockBundle()
    }
    
    override func tearDown() {
        AppInfo.bundle = .main
        
        super.tearDown()
    }
    
    func testAppName() {
        XCTAssertEqual(AppInfo.name, "MockAppName")
    }
    
    func testAppVersion() {
        XCTAssertEqual(AppInfo.version, "MockAppVersion")
    }
    
    func testBuildNumber() {
        XCTAssertEqual(AppInfo.buildNumber, "MockBuildNumber")
    }
    
    func testBundleIdentifier() {
        XCTAssertEqual(AppInfo.bundleIdentifier, "com.mock.bundleidentifier")
    }
    
    func testCustomValue() {
        XCTAssertEqual(AppInfo.value(for: "CustomKey"), "MockCustomValue")
    }
}

class MockBundle: Bundle {
    override var infoDictionary: [String: Any]? {
        return [
            "CFBundleName": "MockAppName",
            "CFBundleShortVersionString": "MockAppVersion",
            "CFBundleVersion": "MockBuildNumber",
            "CustomKey": "MockCustomValue"
        ]
    }
    
    override var bundleIdentifier: String? {
        return "com.mock.bundleidentifier"
    }
}
