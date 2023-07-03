import XCTest
@testable import Measure

final class MeasureTests: XCTestCase {
    func testSleep() throws {
        let measure = Measure(key: "sleep")
        sleep(1)
        let time = measure.finish()
        assert(time > 1 && time < 2)
    }
    
    func testRequest() throws {
        let exp = XCTestExpectation(description: "request")
        let url = URL(string: "https://httpbin.org/get")!
        let measure = Measure(key: "request")
        URLSession.shared.dataTask(with: url) { _, _, _ in
            assert(measure.finish() > 0)
            exp.fulfill()
        }.resume()
        wait(for: [exp], timeout: 30)
    }
}
