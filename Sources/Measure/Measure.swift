// Mezhevikin Alexey: https://github.com/mezhevikin/Measure
import Foundation

public struct Measure {
    public let key: String
    private let start = CFAbsoluteTimeGetCurrent()
    
    @discardableResult
    public func finish() -> Double {
        let time = CFAbsoluteTimeGetCurrent() - start
        print(String(format: "⏱️ Measure [\(key)]: %.5f sec.", time))
        return time
    }
}
