import XCTest
@testable import h3_swift

final class H3IndexTests: XCTestCase {
    
    func testlatlngToH3Index() {
        let coord = H3.LatLng(lat: 40.689167, lng: -74.044444)
        let index = coord.toH3Index(resolution: 5)
        
        XCTAssertEqual(index.hexString, "0x852a1073fffffff")
    }
}
