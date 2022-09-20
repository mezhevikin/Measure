import XCTest
@testable import Measure

final class MeasureTests: XCTestCase {
    func testSleep() throws {
        Measure.start("sleep")
        sleep(1)
        let time = Measure.finish("sleep")
        assert(time > 1 && time < 2)
    }
    
    func testRequest() throws {
        let exp = XCTestExpectation(description: "request")
        let url = URL(string: "https://httpbin.org/get")!
        Measure.start("request")
        URLSession.shared.dataTask(with: url) { _, _, _ in
            assert(Measure.finish("request") > 0)
            exp.fulfill()
        }.resume()
        wait(for: [exp], timeout: 30)
    }
}
